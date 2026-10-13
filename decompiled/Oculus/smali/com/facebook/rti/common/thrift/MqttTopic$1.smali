.class final Lcom/facebook/rti/common/thrift/MqttTopic$1;
.super Landroid/util/SparseArray;
.source "MqttTopic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/thrift/MqttTopic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 197
    const/4 v0, 0x0

    const-string v1, "/buddy_list"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 198
    const/4 v0, 0x1

    const-string v1, "/create_thread"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 199
    const/4 v0, 0x2

    const-string v1, "/create_thread_response"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 200
    const/4 v0, 0x3

    const-string v1, "/delete_thread_notification"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 201
    const/4 v0, 0x4

    const-string v1, "/delete_messages_notification"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 202
    const/4 v0, 0x5

    const-string v1, "/orca_message_notifications"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 203
    const/4 v0, 0x6

    const-string v1, "/friending_state_change"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 204
    const/4 v0, 0x7

    const-string v1, "/friend_request"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 205
    const/16 v0, 0x8

    const-string v1, "/friend_requests_seen"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 206
    const/16 v0, 0x9

    const-string v1, "/graphql"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 207
    const/16 v0, 0xa

    const-string v1, "/group_msg"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 208
    const/16 v0, 0xb

    const-string v1, "/group_notifs_unseen"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 209
    const/16 v0, 0xc

    const-string v1, "/group_msgs_unseen"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 210
    const/16 v0, 0xd

    const-string v1, "/inbox"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 211
    const/16 v0, 0xe

    const-string v1, "/action_id_notification"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 212
    const/16 v0, 0xf

    const-string v1, "/aura_notification"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 213
    const/16 v0, 0x10

    const-string v1, "/aura_signal"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 214
    const/16 v0, 0x11

    const-string v1, "/friends_locations"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 215
    const/16 v0, 0x12

    const-string v1, "/mark_thread"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 216
    const/16 v0, 0x13

    const-string v1, "/mark_thread_response"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 217
    const/16 v0, 0x14

    const-string v1, "/mercury"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 218
    const/16 v0, 0x15

    const-string v1, "/messenger_sync"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 219
    const/16 v0, 0x16

    const-string v1, "/messenger_sync_ack"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 220
    const/16 v0, 0x17

    const-string v1, "/messenger_sync_create_queue"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 221
    const/16 v0, 0x18

    const-string v1, "/messenger_sync_get_diffs"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 222
    const/16 v0, 0x19

    const-string v1, "/messaging"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 223
    const/16 v0, 0x1a

    const-string v1, "/messaging_events"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 224
    const/16 v0, 0x1b

    const-string v1, "/mobile_requests_count"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 225
    const/16 v0, 0x1c

    const-string v1, "/mobile_video_encode"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 226
    const/16 v0, 0x1d

    const-string v1, "/orca_notification_updates"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 227
    const/16 v0, 0x1e

    const-string v1, "/notifications_sync"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 228
    const/16 v0, 0x1f

    const-string v1, "/notifications_read"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 229
    const/16 v0, 0x20

    const-string v1, "/notifications_seen"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 230
    const/16 v0, 0x21

    const-string v1, "/push_notification"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 231
    const/16 v0, 0x22

    const-string v1, "/pp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 232
    const/16 v0, 0x23

    const-string v1, "/orca_presence"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 233
    const/16 v0, 0x24

    const-string v1, "/privacy_changed"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 234
    const/16 v0, 0x25

    const-string v1, "/privacy_updates"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 235
    const/16 v0, 0x26

    const-string v1, "/send_additional_contacts"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 236
    const/16 v0, 0x27

    const-string v1, "/send_chat_event"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 237
    const/16 v0, 0x28

    const-string v1, "/send_delivery_receipt"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 238
    const/16 v0, 0x29

    const-string v1, "/send_endpoint_capabilities"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 239
    const/16 v0, 0x2a

    const-string v1, "/foreground_state"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 240
    const/16 v0, 0x2b

    const-string v1, "/aura_location"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 241
    const/16 v0, 0x2c

    const-string v1, "/send_location"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 242
    const/16 v0, 0x2d

    const-string v1, "/send_message2"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 243
    const/16 v0, 0x2e

    const-string v1, "/send_message"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 244
    const/16 v0, 0x2f

    const-string v1, "/send_message_response"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 245
    const/16 v0, 0x30

    const-string v1, "/ping"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 246
    const/16 v0, 0x31

    const-string v1, "/presence"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 247
    const/16 v0, 0x32

    const-string v1, "/send_push_notification_ack"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 248
    const/16 v0, 0x33

    const-string v1, "/rich_presence"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 249
    const/16 v0, 0x34

    const-string v1, "/send_skype"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 250
    const/16 v0, 0x35

    const-string v1, "/typing"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 251
    const/16 v0, 0x36

    const-string v1, "/set_client_settings"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 252
    const/16 v0, 0x37

    const-string v1, "/shoerack_notifications"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 253
    const/16 v0, 0x38

    const-string v1, "/orca_ticker_updates"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 254
    const/16 v0, 0x39

    const-string v1, "/orca_typing_notifications"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 255
    const/16 v0, 0x3a

    const-string v1, "/typ"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 256
    const/16 v0, 0x3b

    const-string v1, "/t_ms"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 257
    const/16 v0, 0x3c

    const-string v1, "/orca_video_notifications"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 258
    const/16 v0, 0x3d

    const-string v1, "/orca_visibility_updates"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 259
    const/16 v0, 0x3e

    const-string v1, "/webrtc"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 260
    const/16 v0, 0x3f

    const-string v1, "/webrtc_response"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 261
    const/16 v0, 0x40

    const-string v1, "/subscribe"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 262
    const/16 v0, 0x41

    const-string v1, "/t_p"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 263
    const/16 v0, 0x42

    const-string v1, "/push_ack"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 264
    const/16 v0, 0x44

    const-string v1, "/webrtc_binary"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 265
    const/16 v0, 0x45

    const-string v1, "/t_sm"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 266
    const/16 v0, 0x46

    const-string v1, "/t_sm_rp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 267
    const/16 v0, 0x47

    const-string v1, "/t_vs"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 268
    const/16 v0, 0x48

    const-string v1, "/t_rtc"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 269
    const/16 v0, 0x49

    const-string v1, "/echo"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 270
    const/16 v0, 0x4a

    const-string v1, "/pages_messaging"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 271
    const/16 v0, 0x4b

    const-string v1, "/t_omnistore_sync"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 272
    const/16 v0, 0x4c

    const-string v1, "/fbns_msg"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 273
    const/16 v0, 0x4d

    const-string v1, "/t_ps"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 274
    const/16 v0, 0x4e

    const-string v1, "/t_dr_batch"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 275
    const/16 v0, 0x4f

    const-string v1, "/fbns_reg_req"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 276
    const/16 v0, 0x50

    const-string v1, "/fbns_reg_resp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 277
    const/16 v0, 0x51

    const-string v1, "/omnistore_subscribe_collection"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 278
    const/16 v0, 0x52

    const-string v1, "/fbns_unreg_req"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 279
    const/16 v0, 0x53

    const-string v1, "/fbns_unreg_resp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 280
    const/16 v0, 0x54

    const-string v1, "/omnistore_change_record"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 281
    const/16 v0, 0x55

    const-string v1, "/t_dr_response"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 282
    const/16 v0, 0x56

    const-string v1, "/quick_promotion_refresh"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 283
    const/16 v0, 0x57

    const-string v1, "/v_ios"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 284
    const/16 v0, 0x58

    const-string v1, "/pubsub"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 285
    const/16 v0, 0x59

    const-string v1, "/get_media"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 286
    const/16 v0, 0x5a

    const-string v1, "/get_media_resp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 287
    const/16 v0, 0x5b

    const-string v1, "/mqtt_health_stats"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 288
    const/16 v0, 0x5c

    const-string v1, "/t_sp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 289
    const/16 v0, 0x5d

    const-string v1, "/groups_landing_updates"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 290
    const/16 v0, 0x5e

    const-string v1, "/rs"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 291
    const/16 v0, 0x5f

    const-string v1, "/t_sm_b"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 292
    const/16 v0, 0x60

    const-string v1, "/t_sm_b_rsp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 293
    const/16 v0, 0x61

    const-string v1, "/t_ms_gd"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 294
    const/16 v0, 0x62

    const-string v1, "/t_rtc_multi"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 295
    const/16 v0, 0x63

    const-string v1, "/friend_accepted"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 296
    const/16 v0, 0x64

    const-string v1, "/t_tn"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 297
    const/16 v0, 0x65

    const-string v1, "/t_mf_as"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 298
    const/16 v0, 0x66

    const-string v1, "/t_fs"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 299
    const/16 v0, 0x67

    const-string v1, "/t_tp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 300
    const/16 v0, 0x68

    const-string v1, "/t_stp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 301
    const/16 v0, 0x69

    const-string v1, "/t_st"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 302
    const/16 v0, 0x6a

    const-string v1, "/omni"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 303
    const/16 v0, 0x6b

    const-string v1, "/t_push"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 304
    const/16 v0, 0x6c

    const-string v1, "/omni_c"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 305
    const/16 v0, 0x6d

    const-string v1, "/t_sac"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 306
    const/16 v0, 0x6e

    const-string v1, "/omnistore_resnapshot"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 307
    const/16 v0, 0x6f

    const-string v1, "/t_spc"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 308
    const/16 v0, 0x70

    const-string v1, "/t_callability_req"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 309
    const/16 v0, 0x71

    const-string v1, "/t_callability_resp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 310
    const/16 v0, 0x74

    const-string v1, "/t_ec"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 311
    const/16 v0, 0x75

    const-string v1, "/t_tcp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 312
    const/16 v0, 0x76

    const-string v1, "/t_tcpr"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 313
    const/16 v0, 0x77

    const-string v1, "/t_ts"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 314
    const/16 v0, 0x78

    const-string v1, "/t_ts_rp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 315
    const/16 v0, 0x79

    const-string v1, "/t_mt_req"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 316
    const/16 v0, 0x7a

    const-string v1, "/t_mt_resp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 317
    const/16 v0, 0x7b

    const-string v1, "/t_inbox"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 318
    const/16 v0, 0x7c

    const-string v1, "/p_a_req"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 319
    const/16 v0, 0x7d

    const-string v1, "/p_a_resp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 320
    const/16 v0, 0x7e

    const-string v1, "/unsubscribe"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 321
    const/16 v0, 0x7f

    const-string v1, "/t_graphql_req"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 322
    const/16 v0, 0x80

    const-string v1, "/t_graphql_resp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 323
    const/16 v0, 0x81

    const-string v1, "/t_app_update"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 324
    const/16 v0, 0x82

    const-string v1, "/p_updated"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 325
    const/16 v0, 0x83

    const-string v1, "/t_omnistore_sync_low_pri"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 326
    const/16 v0, 0x84

    const-string v1, "/ig_send_message"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 327
    const/16 v0, 0x85

    const-string v1, "/ig_send_message_response"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 328
    const/16 v0, 0x86

    const-string v1, "/ig_sub_iris"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 329
    const/16 v0, 0x87

    const-string v1, "/ig_sub_iris_response"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 330
    const/16 v0, 0x88

    const-string v1, "/ig_snapshot_response"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 331
    const/16 v0, 0x89

    const-string v1, "/fbns_msg_hp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 332
    const/16 v0, 0x8a

    const-string v1, "/data_stream"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 333
    const/16 v0, 0x8b

    const-string v1, "/opened_thread"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 334
    const/16 v0, 0x8c

    const-string v1, "/t_typ_att"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 335
    const/16 v0, 0x8d

    const-string v1, "/iris_server_reset"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 336
    const/16 v0, 0x8e

    const-string v1, "/flash_thread_presence"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 337
    const/16 v0, 0x8f

    const-string v1, "/flash_send_thread_presence"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 338
    const/16 v0, 0x90

    const-string v1, "/flash_thread_typing"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 339
    const/16 v0, 0x92

    const-string v1, "/ig_message_sync"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 340
    const/16 v0, 0x94

    const-string v1, "/t_omnistore_batched_message"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 341
    const/16 v0, 0x95

    const-string v1, "/ig_realtime_sub"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 342
    const/16 v0, 0x96

    const-string v1, "/t_region_hint"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 343
    const/16 v0, 0x97

    const-string v1, "/t_fb_family_navigation_badge"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 344
    const/16 v0, 0x98

    const-string v1, "/t_ig_family_navigation_badge"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 345
    const/16 v0, 0x99

    const-string v1, "/parties_notifications"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 346
    const/16 v0, 0x9a

    const-string v1, "/t_assist"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 347
    const/16 v0, 0x9b

    const-string v1, "/t_assist_rp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 348
    const/16 v0, 0x9c

    const-string v1, "/t_create_group"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 349
    const/16 v0, 0x9d

    const-string v1, "/t_create_group_rp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 350
    const/16 v0, 0x9e

    const-string v1, "/t_create_group_ms"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 351
    const/16 v0, 0x9f

    const-string v1, "/t_create_group_ms_rp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 352
    const/16 v0, 0xa0

    const-string v1, "/t_entity_presence"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 353
    const/16 v0, 0xa1

    const-string v1, "/ig_region_hint_rp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 354
    const/16 v0, 0xa2

    const-string v1, "/buddylist_overlay"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 355
    const/16 v0, 0xa3

    const-string v1, "/setup_debug"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 356
    const/16 v0, 0xa4

    const-string v1, "/ig_conn_update"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 357
    const/16 v0, 0xa5

    const-string v1, "/ig_msg_dr"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 358
    const/16 v0, 0xa6

    const-string v1, "/parties_notifications_req"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 359
    const/16 v0, 0xa7

    const-string v1, "/omni_connect_sync"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 360
    const/16 v0, 0xa8

    const-string v1, "/parties_send_message"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 361
    const/16 v0, 0xa9

    const-string v1, "/parties_send_message_response"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 362
    const/16 v0, 0xaa

    const-string v1, "/omni_connect_sync_req"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 363
    const/16 v0, 0xac

    const-string v1, "/br_sr"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 364
    const/16 v0, 0xae

    const-string v1, "/sr_res"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 365
    const/16 v0, 0xaf

    const-string v1, "/omni_connect_sync_batch"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 366
    const/16 v0, 0xb0

    const-string v1, "/notify_disconnect"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 367
    const/16 v0, 0xb1

    const-string v1, "/omni_mc_ep_push_req"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 368
    const/16 v0, 0xb4

    const-string v1, "/fbns_msg_ack"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 369
    const/16 v0, 0xb5

    const-string v1, "/t_add_participants_to_group"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 370
    const/16 v0, 0xb6

    const-string v1, "/t_add_participants_to_group_rp"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 371
    const/16 v0, 0xbc

    const-string v1, "/t_aloha_session_req"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 372
    const/16 v0, 0xc3

    const-string v1, "/t_thread_typing"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 373
    const/16 v0, 0xc9

    const-string v1, "/video_rt_pipe"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 374
    const/16 v0, 0xca

    const-string v1, "/t_update_presence_extra_data"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 375
    const/16 v0, 0xcb

    const-string v1, "/video_rt_pipe_res"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 376
    const/16 v0, 0xd3

    const-string v1, "/onevc"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 377
    const/16 v0, 0xe7

    const-string v1, "/fbns_exp_logging"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/MqttTopic$1;->put(ILjava/lang/Object;)V

    .line 378
    return-void
.end method
