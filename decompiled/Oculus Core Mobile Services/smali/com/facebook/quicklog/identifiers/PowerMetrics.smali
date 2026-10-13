.class public Lcom/facebook/quicklog/identifiers/PowerMetrics;
.super Ljava/lang/Object;
.source "PowerMetrics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    packed-switch p0, :pswitch_data_0

    .line 322
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 179
    :pswitch_1
    const-string v0, "POWER_METRICS_PROC_CPU_USER_TIME"

    goto :goto_0

    .line 181
    :pswitch_2
    const-string v0, "POWER_METRICS_PROC_CPU_SYSTEM_TIME"

    goto :goto_0

    .line 183
    :pswitch_3
    const-string v0, "POWER_METRICS_PROC_CPU_TOTAL_TIME"

    goto :goto_0

    .line 185
    :pswitch_4
    const-string v0, "POWER_METRICS_SESSION_BATTERY_DRAIN"

    goto :goto_0

    .line 187
    :pswitch_5
    const-string v0, "POWER_METRICS_MQTT_NUM_RADIO_WAKEUPS"

    goto :goto_0

    .line 189
    :pswitch_6
    const-string v0, "POWER_METRICS_MQTT_TRAFFIC_COUNT"

    goto :goto_0

    .line 191
    :pswitch_7
    const-string v0, "POWER_METRICS_MQTT_SENT_BYTES"

    goto :goto_0

    .line 193
    :pswitch_8
    const-string v0, "POWER_METRICS_MQTT_RECEIVED_BYTES"

    goto :goto_0

    .line 195
    :pswitch_9
    const-string v0, "POWER_METRICS_LIGER_TRANSFER_DATA_SIZE"

    goto :goto_0

    .line 197
    :pswitch_a
    const-string v0, "POWER_METRICS_LIGER_LOW_POWER_TIME"

    goto :goto_0

    .line 199
    :pswitch_b
    const-string v0, "POWER_METRICS_LIGER_FULL_POWER_TIME"

    goto :goto_0

    .line 201
    :pswitch_c
    const-string v0, "POWER_METRICS_LIGER_ATTRIBUTION_DATA"

    goto :goto_0

    .line 203
    :pswitch_d
    const-string v0, "POWER_METRICS_LIGER_UP_BYTES"

    goto :goto_0

    .line 205
    :pswitch_e
    const-string v0, "POWER_METRICS_LIGER_DOWN_BYTES"

    goto :goto_0

    .line 207
    :pswitch_f
    const-string v0, "POWER_METRICS_LIGER_REQUEST_COUNT"

    goto :goto_0

    .line 209
    :pswitch_10
    const-string v0, "POWER_METRICS_LIGER_WAKEUP_COUNT"

    goto :goto_0

    .line 211
    :pswitch_11
    const-string v0, "POWER_METRICS_WAKELOCKS_HELD_TIME"

    goto :goto_0

    .line 213
    :pswitch_12
    const-string v0, "POWER_METRICS_WAKELOCKS_ACQUIRED_NUM"

    goto :goto_0

    .line 215
    :pswitch_13
    const-string v0, "POWER_METRICS_WAKELOCKS_ATTRIBUTION_DATA"

    goto :goto_0

    .line 217
    :pswitch_14
    const-string v0, "POWER_METRICS_WAKELOCKS_DISPOSED_TIME"

    goto :goto_0

    .line 219
    :pswitch_15
    const-string v0, "POWER_METRICS_LOCATION_ATTRIBUTION_DATA"

    goto :goto_0

    .line 221
    :pswitch_16
    const-string v0, "POWER_METRICS_LOCATION_COARSE_TIME_MS"

    goto :goto_0

    .line 223
    :pswitch_17
    const-string v0, "POWER_METRICS_LOCATION_MEDIUM_TIME_MS"

    goto :goto_0

    .line 225
    :pswitch_18
    const-string v0, "POWER_METRICS_LOCATION_FINE_TIME_MS"

    goto :goto_0

    .line 227
    :pswitch_19
    const-string v0, "POWER_METRICS_CHILD_CPU_USER_TIME"

    goto :goto_0

    .line 229
    :pswitch_1a
    const-string v0, "POWER_METRICS_CHILD_CPU_SYSTEM_TIME"

    goto :goto_0

    .line 231
    :pswitch_1b
    const-string v0, "POWER_METRICS_CHILD_CPU_TOTAL_TIME"

    goto :goto_0

    .line 233
    :pswitch_1c
    const-string v0, "POWER_METRICS_CPU_ATTRIBUTION_DATA"

    goto :goto_0

    .line 235
    :pswitch_1d
    const-string v0, "POWER_METRICS_SESSION_POWER_DRAIN"

    goto :goto_0

    .line 237
    :pswitch_1e
    const-string v0, "POWER_METRICS_MQTT_ATTRIBUTION_DATA"

    goto :goto_0

    .line 239
    :pswitch_1f
    const-string v0, "POWER_METRICS_CPU_SPIN_TRACING"

    goto :goto_0

    .line 241
    :pswitch_20
    const-string v0, "POWER_METRICS_CAMERA_OPEN_TIME"

    goto :goto_0

    .line 243
    :pswitch_21
    const-string v0, "POWER_METRICS_CAMERA_PREVIEW_TIME"

    goto :goto_0

    .line 245
    :pswitch_22
    const-string v0, "POWER_METRICS_MQTT_FULL_POWER_TIME"

    goto :goto_0

    .line 247
    :pswitch_23
    const-string v0, "POWER_METRICS_MQTT_LOW_POWER_TIME"

    goto :goto_0

    .line 249
    :pswitch_24
    const-string v0, "POWER_METRICS_CPU_TIME_IN_STATE"

    goto :goto_0

    .line 251
    :pswitch_25
    const-string v0, "POWER_METRICS_AVG_BRIGHTNESS"

    goto :goto_0

    .line 253
    :pswitch_26
    const-string v0, "POWER_METRICS_DISPLAY_ENERGY"

    goto :goto_0

    .line 255
    :pswitch_27
    const-string v0, "POWER_METRICS_DISPLAY_ENERGY_100_TIME_PERCENT_ON_BATTERY"

    goto :goto_0

    .line 257
    :pswitch_28
    const-string v0, "POWER_METRICS_MOBILE_RX_BYTES"

    goto :goto_0

    .line 259
    :pswitch_29
    const-string v0, "POWER_METRICS_MOBILE_TX_BYTES"

    goto :goto_0

    .line 261
    :pswitch_2a
    const-string v0, "POWER_METRICS_MOBILE_TX_PACKETS"

    goto :goto_0

    .line 263
    :pswitch_2b
    const-string v0, "POWER_METRICS_WIFI_RX_PACKETS"

    goto/16 :goto_0

    .line 265
    :pswitch_2c
    const-string v0, "POWER_METRICS_MOBILE_RX_PACKETS"

    goto/16 :goto_0

    .line 267
    :pswitch_2d
    const-string v0, "POWER_METRICS_WIFI_TX_PACKETS"

    goto/16 :goto_0

    .line 269
    :pswitch_2e
    const-string v0, "POWER_METRICS_WIFI_TX_BYTES"

    goto/16 :goto_0

    .line 271
    :pswitch_2f
    const-string v0, "POWER_METRICS_WIFI_RX_BYTES"

    goto/16 :goto_0

    .line 273
    :pswitch_30
    const-string v0, "POWER_METRICS_SESSION_END_BATTERY_LEVEL"

    goto/16 :goto_0

    .line 275
    :pswitch_31
    const-string v0, "POWER_METRICS_SESSION_BATTERY_WAS_CHARGING"

    goto/16 :goto_0

    .line 277
    :pswitch_32
    const-string v0, "POWER_METRICS_BLE_SCAN_COUNT"

    goto/16 :goto_0

    .line 279
    :pswitch_33
    const-string v0, "POWER_METRICS_BLE_SCAN_TOTAL_DURATION_MS"

    goto/16 :goto_0

    .line 281
    :pswitch_34
    const-string v0, "POWER_METRICS_THREAD_CPU_ATTRIBUTION_DATA"

    goto/16 :goto_0

    .line 283
    :pswitch_35
    const-string v0, "POWER_METRICS_CONTACTS_DOWNLOAD_COUNT"

    goto/16 :goto_0

    .line 285
    :pswitch_36
    const-string v0, "POWER_METRICS_FULL_CONTACTS_SYNC"

    goto/16 :goto_0

    .line 287
    :pswitch_37
    const-string v0, "POWER_METRICS_DELTA_CONTACTS_SYNC"

    goto/16 :goto_0

    .line 289
    :pswitch_38
    const-string v0, "POWER_METRICS_RANDOM_LOOM_TRACING"

    goto/16 :goto_0

    .line 291
    :pswitch_39
    const-string v0, "POWER_METRICS_WIFI_SCAN_COUNT"

    goto/16 :goto_0

    .line 293
    :pswitch_3a
    const-string v0, "POWER_METRICS_APP_WAKEUP_ATTRIBUTION_DATA"

    goto/16 :goto_0

    .line 295
    :pswitch_3b
    const-string v0, "POWER_METRICS_RADIO_MOBILE_LOW_POWER_ACTIVE_S"

    goto/16 :goto_0

    .line 297
    :pswitch_3c
    const-string v0, "POWER_METRICS_RADIO_MOBILE_HIGH_POWER_ACTIVE_S"

    goto/16 :goto_0

    .line 299
    :pswitch_3d
    const-string v0, "POWER_METRICS_RADIO_MOBILE_WAKEUP_COUNT"

    goto/16 :goto_0

    .line 301
    :pswitch_3e
    const-string v0, "POWER_METRICS_RADIO_WIFI_ACTIVE_S"

    goto/16 :goto_0

    .line 303
    :pswitch_3f
    const-string v0, "POWER_METRICS_RADIO_WIFI_WAKEUP_COUNT"

    goto/16 :goto_0

    .line 305
    :pswitch_40
    const-string v0, "POWER_METRICS_BLE_OPPORTUNISTIC_SCAN_COUNT"

    goto/16 :goto_0

    .line 307
    :pswitch_41
    const-string v0, "POWER_METRICS_BLE_OPPORTUNISTIC_SCAN_TOTAL_DURATION_MS"

    goto/16 :goto_0

    .line 309
    :pswitch_42
    const-string v0, "POWER_METRICS_ACRA_ACTIVE_RADIO_TIME_S"

    goto/16 :goto_0

    .line 311
    :pswitch_43
    const-string v0, "POWER_METRICS_ACRA_TAIL_RADIO_TIME_S"

    goto/16 :goto_0

    .line 313
    :pswitch_44
    const-string v0, "POWER_METRICS_ACRA_RADIO_WAKEUP_COUNT"

    goto/16 :goto_0

    .line 315
    :pswitch_45
    const-string v0, "POWER_METRICS_ACRA_TX_BYTES"

    goto/16 :goto_0

    .line 317
    :pswitch_46
    const-string v0, "POWER_METRICS_BATTERY_DISCHARGE_TRACING"

    goto/16 :goto_0

    .line 319
    :pswitch_47
    const-string v0, "POWER_METRICS_CPU_SPIN_BLACKBOX_TRACING"

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
    .end packed-switch
.end method
