#include <iostream>
#include <ctime>
#include <cstdlib>
#include <iostream>
#include <cstring>
#include <iio.h>
#include <fstream>

using namespace std;

int main(){
    static struct iio_context *ctx = NULL;
    static struct iio_device *dev = NULL;
    static struct iio_device *trig = NULL;
    static struct iio_channel *chn = NULL;
    static struct iio_buffer *buf = NULL;

    ctx = iio_create_default_context();
    dev = iio_context_find_device(ctx, "iio:device1");
    chn = iio_device_find_channel(dev, "accel_x", false);
    iio_channel_enable(chn);
    trig = iio_context_find_device(ctx, "trigger0");
    if(dev ==NULL){
        cerr<<"dev not found";
    }
    if(trig ==NULL){
        cerr<<"trig not found";
    }
    
    if(chn ==NULL){
        cerr<<"chn not found";
    }
    int success = iio_device_set_trigger(dev, trig);
    cerr << "text"<< success << endl;
    char error_name[100];
    iio_strerror(success,error_name,100);

    cout<< "Error:" << error_name<< endl;	

    buf = iio_device_create_buffer(dev, 4, false);
    
    // char *data;
    // int bytes_read = iio_channel_attr_read(chn,"accel_x",data,1000); 
    // cout << "bytes read = " << bytes_read;

    // int cnt = 	iio_context_get_devices_count(ctx); // 3
    // const char *name =  iio_context_get_name(ctx); // 
    // int count_attr = iio_context_get_attrs_count(ctx); // 1
    // int count_ch = iio_device_get_channels_count(dev); // 7
    // bool is_scan = iio_channel_is_scan_element(chn); // true
    while(true){
    ssize_t read = iio_buffer_refill(buf);

    // cout << read << endl;
    // int sample_buffer[8];
    // size_t iio_buf_size = iio_buffer_end(buf) - iio_buffer_start(buf);
    // size_t count = MAX(sizeof(samples_buffer), iio_buf_size);
    // memcpy(iio_buffer_start(buf), samples_buffer, count);
    
    for (void *ptr = iio_buffer_first(buf, chn);
            ptr < iio_buffer_end(buf);
            ptr += iio_buffer_step(buf)) {
        /* Use "ptr" to read or write a sample for this channel */
        cout << *((short*)ptr) << endl;
            }
    }
    // int imu1_Ax;
    // while(1){
    // ifstream imu1_Ax("/sys/bus/iio/devices/iio:device1/in_accel_x_raw");
    // cout<< imu1_Ax.rdbuf() <<endl;
    // }
    

    // cout << "read"<< sample_buffer << endl;;

}