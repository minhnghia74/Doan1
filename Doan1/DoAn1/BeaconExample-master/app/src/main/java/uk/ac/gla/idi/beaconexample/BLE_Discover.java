package uk.ac.gla.idi.beaconexample;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.location.Criteria;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;

import java.util.ArrayList;

/**
 * Created by ktoombs on 7/17/17.
 */

public class BLE_Discover extends AppCompatActivity {
    private static final int REQUEST_ENABLE_BT = 1;
    private static final long SCAN_PERIOD = 2000;  //2 seconds for scanning
    private static final String TAG = "";
    private static final int MY_PERMISSIONS_REQUEST_LOCATION = 99;
    private BluetoothAdapter mBluetoothAdapter;
    private ArrayAdapter<String> listAdapter;
    private boolean isScanning;
    private Handler mHandler;
    private Button scanButton;
    private Button connectButton;
    private ListView deviceList;
    private ArrayList<Device> visibleDevices;
    private ArrayList<BluetoothDevice> bleDevices;
    private BluetoothDevice selectedDevice;  //The device we are choosing to connect to
    private LocationManager locationManager;
    private String provider;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        Log.d(TAG, "*** onCreate ***");
        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_bluetooth_discover);
        listAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, 0);
//        deviceList = (ListView) findViewById(R.id.listView);
        deviceList.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                connectButton.setEnabled(true);
                String chosenDevice = (String) adapterView.getItemAtPosition(i);
                //This is the BLE device at the selected index
                //The devices in the list view directly correspond to the devices in bleDevices
                selectedDevice = bleDevices.get(i);
            }
        });
        deviceList.setAdapter(listAdapter);
//        visibleDevices = new ArrayList<>();
        bleDevices = new ArrayList<>();
        locationManager = (LocationManager) getSystemService(Context.LOCATION_SERVICE);
        provider = locationManager.getBestProvider(new Criteria(), false);
        mHandler = new Handler();

//        scanButton = (Button) findViewById(R.id.scanButton);
//        scanButton.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View view) {
//                listAdapter.clear();
//                visibleDevices.clear();
//                bleDevices.clear();
//                scanLeDevice(true);
//            }
//        });

        connectButton = (Button) findViewById(R.id.connectButton);
        connectButton.setEnabled(false);
        connectButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                connect();
            }
        });

        final BluetoothManager bluetoothManager = (BluetoothManager) getSystemService(Context.BLUETOOTH_SERVICE);
        mBluetoothAdapter = bluetoothManager.getAdapter();
//        requestLocationPermissions();
    }

    private void connect(){
        Intent intent = new Intent(this, BLE_Connect.class);
        intent.putExtra("btDevice", selectedDevice);
        startActivity(intent);
    }

//    private void requestLocationPermissions() {
//        Log.d(TAG, "*** requestLocationPermissions ***");
//
//        if (ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED){
//            if (ActivityCompat.shouldShowRequestPermissionRationale(this,
//                    Manifest.permission.ACCESS_FINE_LOCATION)) {
//            } else {
//                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, MY_PERMISSIONS_REQUEST_LOCATION);
//            }
//        }
//    }

//    @Override
//    public void onRequestPermissionsResult(int requestCode, String permissions[], int[] grantResults) {
//        Log.d(TAG, "*** onRequetPermissionsResult ***");
//
//        switch (requestCode) {
//            case MY_PERMISSIONS_REQUEST_LOCATION: {
//                // If request is cancelled, the result arrays are empty.
//                if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
//                    // permission was granted.
//                    if (ContextCompat.checkSelfPermission(this, Manifest.permission. ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED) {
//                        //Request location updates:
//                        locationManager.requestLocationUpdates(provider, 400, 1, (LocationListener) this);
//                    }
//                }
//                else {
//                    // permission denied.
//                        finish();
//                }
//                return;
//            }
//        }
//    }

    @Override
    protected void onResume() {
        Log.d(TAG, "*** onResume ***");

        super.onResume();

        // Ensures Bluetooth is enabled on the device.  If Bluetooth is not currently enabled,
        // fire an intent to display a dialog asking the user to grant permission to enable it.
        if (!mBluetoothAdapter.isEnabled()) {
            Intent enableBtIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            startActivityForResult(enableBtIntent, REQUEST_ENABLE_BT);
        }

        // Initializes list view adapter.
        listAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, 0);
        deviceList.setAdapter(listAdapter);
    }

    private boolean checkForDuplicateDevice(ArrayList<Device> devices, BluetoothDevice currDevice){
        //Iterate through all devices in the list of visible devices, check if the device we are currently looking at already exists
        //Returns true if it already exists, false otherwise
        for(Device d : devices){
            if(currDevice.getAddress().equals(d.getMacAddr())){
                return true;
            }
        }
        return false;
    }

    // Device scan callback.
    private BluetoothAdapter.LeScanCallback mLeScanCallback =
            new BluetoothAdapter.LeScanCallback() {

                @Override
                public void onLeScan(final BluetoothDevice device, int rssi, byte[] scanRecord) {
                    Log.d(TAG, "*** onLeScan ***");

                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Log.d(TAG, "*** run ***");

                            //Only add the device to the list if we haven't encountered it yet
                            if(!checkForDuplicateDevice(visibleDevices, device)) {
                                Device d = new Device(device.getName(), device.getAddress());
                                //Log.d(TAG, "**** Device NAME:  " + device.getName() + " ****");
                                visibleDevices.add(d);
                                bleDevices.add(device);
                                for(BluetoothDevice btd : bleDevices){
                                    Log.d(TAG, "MAC ADDRESS: " + btd.getAddress());
                                }
                                String deviceIdentifier = "";
                                if (device.getName() != null) {
                                    deviceIdentifier += "Name: " + device.getName();
                                }
                                deviceIdentifier += " MAC Address: " + device.getAddress() + " ";
                                if(device.getUuids() != null) {
                                    deviceIdentifier += device.getUuids().toString();
                                }
                                listAdapter.add(deviceIdentifier);
                                listAdapter.notifyDataSetChanged();
                            }
                        }
                    });
                }
            };

}
