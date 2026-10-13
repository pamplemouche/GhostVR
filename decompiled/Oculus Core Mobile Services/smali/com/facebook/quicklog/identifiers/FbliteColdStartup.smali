.class public Lcom/facebook/quicklog/identifiers/FbliteColdStartup;
.super Ljava/lang/Object;
.source "FbliteColdStartup.java"


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
    .line 145
    packed-switch p0, :pswitch_data_0

    .line 230
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 147
    :pswitch_1
    const-string v0, "FBLITE_COLD_STARTUP_CONNECTION_STATE_DISCONNECTED"

    goto :goto_0

    .line 149
    :pswitch_2
    const-string v0, "FBLITE_COLD_STARTUP_CONNECTION_STATE_CONNECTING"

    goto :goto_0

    .line 151
    :pswitch_3
    const-string v0, "FBLITE_COLD_STARTUP_CONNECTION_STATE_CONNECTED"

    goto :goto_0

    .line 153
    :pswitch_4
    const-string v0, "FBLITE_COLD_STARTUP_CONNECTION_STATE_STANDBY"

    goto :goto_0

    .line 155
    :pswitch_5
    const-string v0, "FBLITE_COLD_STARTUP_CONNECTION_STATE_DROPPED"

    goto :goto_0

    .line 157
    :pswitch_6
    const-string v0, "FBLITE_COLD_STARTUP_CONNECTION_STATE_SHUTTING_DOWN"

    goto :goto_0

    .line 159
    :pswitch_7
    const-string v0, "FBLITE_COLD_STARTUP_CONNECTION_STATE_TERMINATED"

    goto :goto_0

    .line 161
    :pswitch_8
    const-string v0, "FBLITE_COLD_STARTUP_ESTABLISH_SOCKET"

    goto :goto_0

    .line 163
    :pswitch_9
    const-string v0, "FBLITE_COLD_STARTUP_CREATE_SOCKET"

    goto :goto_0

    .line 165
    :pswitch_a
    const-string v0, "FBLITE_COLD_STARTUP_ENABLE_TLS"

    goto :goto_0

    .line 167
    :pswitch_b
    const-string v0, "FBLITE_COLD_STARTUP_DNS_LOOKUP"

    goto :goto_0

    .line 169
    :pswitch_c
    const-string v0, "FBLITE_COLD_STARTUP_TRY_CONNECTING"

    goto :goto_0

    .line 171
    :pswitch_d
    const-string v0, "FBLITE_COLD_STARTUP_WAIT_FOR_HANDSHAKE"

    goto :goto_0

    .line 173
    :pswitch_e
    const-string v0, "FBLITE_COLD_STARTUP_VERIFY_SSL"

    goto :goto_0

    .line 175
    :pswitch_f
    const-string v0, "FBLITE_COLD_STARTUP_TRIGGER_EARLY_CONNECTION"

    goto :goto_0

    .line 177
    :pswitch_10
    const-string v0, "FBLITE_COLD_STARTUP_TRY_GET_EARLY_CONNECTION"

    goto :goto_0

    .line 179
    :pswitch_11
    const-string v0, "FBLITE_COLD_STARTUP_TRIGGER_START_CLIENT_SESSION"

    goto :goto_0

    .line 181
    :pswitch_12
    const-string v0, "FBLITE_COLD_STARTUP_START_CLIENT_SESSION"

    goto :goto_0

    .line 183
    :pswitch_13
    const-string v0, "FBLITE_COLD_STARTUP_TRIGGER_CONNECTING_RUNNABLE"

    goto :goto_0

    .line 185
    :pswitch_14
    const-string v0, "FBLITE_COLD_STARTUP_CONNECTING_RUNNABLE"

    goto :goto_0

    .line 187
    :pswitch_15
    const-string v0, "FBLITE_COLD_STARTUP_START_SEND_AND_RECEIVE_THREADS"

    goto :goto_0

    .line 189
    :pswitch_16
    const-string v0, "FBLITE_COLD_STARTUP_SEND_LOGIN_MESSAGE"

    goto :goto_0

    .line 191
    :pswitch_17
    const-string v0, "FBLITE_COLD_STARTUP_CREATE_LOGIN_MESSAGE"

    goto :goto_0

    .line 193
    :pswitch_18
    const-string v0, "FBLITE_COLD_STARTUP_ASYNC_PREPARE_LOGIN_PROPERTIES"

    goto :goto_0

    .line 195
    :pswitch_19
    const-string v0, "FBLITE_COLD_STARTUP_WAIT_ASYNC_LOGIN_PROPERTIES"

    goto :goto_0

    .line 197
    :pswitch_1a
    const-string v0, "FBLITE_COLD_STARTUP_APPCONTROLLER_ONCREATE"

    goto :goto_0

    .line 199
    :pswitch_1b
    const-string v0, "FBLITE_COLD_STARTUP_ACTIVITY_DELEGATE_ONCREATE"

    goto :goto_0

    .line 201
    :pswitch_1c
    const-string v0, "FBLITE_COLD_STARTUP_CREATE_CLIENTSESSION"

    goto :goto_0

    .line 203
    :pswitch_1d
    const-string v0, "FBLITE_COLD_STARTUP_INITIALIZE_SESSION_OBJECTS"

    goto :goto_0

    .line 205
    :pswitch_1e
    const-string v0, "FBLITE_COLD_STARTUP_INIT_LAYOUT"

    goto :goto_0

    .line 207
    :pswitch_1f
    const-string v0, "FBLITE_COLD_STARTUP_SESSION_TO_FIRST_SCREEN"

    goto :goto_0

    .line 209
    :pswitch_20
    const-string v0, "FBLITE_COLD_STARTUP_PERFORM_LAYOUT_FIRST_SCREEN"

    goto :goto_0

    .line 211
    :pswitch_21
    const-string v0, "FBLITE_COLD_STARTUP_RECEIVE_SCREEN_PARTS"

    goto :goto_0

    .line 213
    :pswitch_22
    const-string v0, "FBLITE_COLD_STARTUP_WAIT_ASYNC_FONTS"

    goto :goto_0

    .line 215
    :pswitch_23
    const-string v0, "FBLITE_COLD_STARTUP_QPL_LOAD_BACKGROOUND_TABLE_CACHE"

    goto :goto_0

    .line 217
    :pswitch_24
    const-string v0, "FBLITE_COLD_STARTUP_QPL_STORE_BACKGROOUND_TABLE_CACHE"

    goto :goto_0

    .line 219
    :pswitch_25
    const-string v0, "FBLITE_COLD_STARTUP_QPL_STORE_RECTANGULAR_BACKGROUND"

    goto :goto_0

    .line 221
    :pswitch_26
    const-string v0, "FBLITE_COLD_STARTUP_QPL_LOAD_RECTANGULAR_BACKGROUND"

    goto :goto_0

    .line 223
    :pswitch_27
    const-string v0, "FBLITE_COLD_STARTUP_FONT_SCHEDULING_DELAY2"

    goto :goto_0

    .line 225
    :pswitch_28
    const-string v0, "FBLITE_COLD_STARTUP_INIT_BACKGROUND_TABLE_CACHE_ANDROID"

    goto :goto_0

    .line 227
    :pswitch_29
    const-string v0, "FBLITE_COLD_STARTUP_QPL_CREATE_RECTANGULAR_BACKGROUND_ON_LOAD"

    goto :goto_0

    .line 145
    nop

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
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method
