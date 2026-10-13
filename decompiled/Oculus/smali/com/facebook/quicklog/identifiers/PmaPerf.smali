.class public Lcom/facebook/quicklog/identifiers/PmaPerf;
.super Ljava/lang/Object;
.source "PmaPerf.java"


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
    .line 106
    packed-switch p0, :pswitch_data_0

    .line 181
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 108
    :pswitch_1
    const-string v0, "PMA_PERF_COLD_START_CREATE_DELEGATE"

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v0, "PMA_PERF_COMMSHUB_CONVERSATION_LOAD"

    goto :goto_0

    .line 112
    :pswitch_3
    const-string v0, "PMA_PERF_COMMSHUB_MESSAGE_LIST_LOAD_FIRST_PAGE"

    goto :goto_0

    .line 114
    :pswitch_4
    const-string v0, "PMA_PERF_COMMSHUB_MESSAGE_LIST_LOAD_NEXT_PAGE"

    goto :goto_0

    .line 116
    :pswitch_5
    const-string v0, "PMA_PERF_COMMSHUB_MESSAGE_LIST_RELOAD_PAGE"

    goto :goto_0

    .line 118
    :pswitch_6
    const-string v0, "PMA_PERF_COMMSHUB_MESSAGE_LIST_UPDATE_FILTER"

    goto :goto_0

    .line 120
    :pswitch_7
    const-string v0, "PMA_PERF_COMMSHUB_SAVED_REPLIES_LOAD"

    goto :goto_0

    .line 122
    :pswitch_8
    const-string v0, "PMA_PERF_COLD_START_FBAPPIMPL_ON_CREATE"

    goto :goto_0

    .line 124
    :pswitch_9
    const-string v0, "PMA_PERF_COLD_START"

    goto :goto_0

    .line 126
    :pswitch_a
    const-string v0, "PMA_PERF_COLD_START_FIRST_RUN"

    goto :goto_0

    .line 128
    :pswitch_b
    const-string v0, "PMA_PERF_WARM_START"

    goto :goto_0

    .line 130
    :pswitch_c
    const-string v0, "PMA_PERF_APP_ONCREATE_TO_LOGIN_ONCREATE"

    goto :goto_0

    .line 132
    :pswitch_d
    const-string v0, "PMA_PERF_LOGIN_ONCREATE_TO_CHROME_ACTIVITY_ONCREATE"

    goto :goto_0

    .line 134
    :pswitch_e
    const-string v0, "PMA_PERF_LOGIN_ONCREATE_TO_REFRESH_FRAGMENT_ONCREATE"

    goto :goto_0

    .line 136
    :pswitch_f
    const-string v0, "PMA_PERF_FETCH_ALL_PAGES_GRAPH_API_METHOD"

    goto :goto_0

    .line 138
    :pswitch_10
    const-string v0, "PMA_PERF_LOAD_ALL_PAGES_AND_EXTRAS"

    goto :goto_0

    .line 140
    :pswitch_11
    const-string v0, "PMA_PERF_FETCH_URI_CONFIG_FQL_API_METHOD"

    goto :goto_0

    .line 142
    :pswitch_12
    const-string v0, "PMA_PERF_CONTAINER_FRAGMENT_ONCREATE_TO_PAGE_VIEW_CREATED"

    goto :goto_0

    .line 144
    :pswitch_13
    const-string v0, "PMA_PERF_CONTAINER_FRAGMENT_ONCREATE_TO_PAGE_ONRESUME"

    goto :goto_0

    .line 146
    :pswitch_14
    const-string v0, "PMA_PERF_CONTAINER_FRAGMENT_ONCREATE_TO_CONTEXT_ITEMS_RENDERED"

    goto :goto_0

    .line 148
    :pswitch_15
    const-string v0, "PMA_PERF_FETCH_PAGE_HEADER_DATA_FROM_SERVER"

    goto :goto_0

    .line 150
    :pswitch_16
    const-string v0, "PMA_PERF_FETCH_PAGE_HEADER_DATA_FROM_CACHE"

    goto :goto_0

    .line 152
    :pswitch_17
    const-string v0, "PMA_PERF_COVER_PHOTO_DOWNLOADED"

    goto :goto_0

    .line 154
    :pswitch_18
    const-string v0, "PMA_PERF_PROFILE_PHOTO_DOWNLOADED"

    goto :goto_0

    .line 156
    :pswitch_19
    const-string v0, "PMA_PERF_COMMSHUB_MESSAGE_LIST_NETWORK"

    goto :goto_0

    .line 158
    :pswitch_1a
    const-string v0, "PMA_PERF_OLDINBOX_MESSAGE_LIST_LOAD_FIRST_PAGE"

    goto :goto_0

    .line 160
    :pswitch_1b
    const-string v0, "PMA_PERF_OLDINBOX_MESSAGE_LIST_LOAD_NEXT_PAGE"

    goto :goto_0

    .line 162
    :pswitch_1c
    const-string v0, "PMA_PERF_OLDINBOX_MESSAGE_LIST_UPDATE_TAG"

    goto :goto_0

    .line 164
    :pswitch_1d
    const-string v0, "PMA_PERF_OLDINBOX_MESSAGE_LIST_UPDATE_INBOX"

    goto :goto_0

    .line 166
    :pswitch_1e
    const-string v0, "PMA_PERF_UPLOAD_COVER_PHOTO"

    goto :goto_0

    .line 168
    :pswitch_1f
    const-string v0, "PMA_PERF_UPLOAD_PROFILE_PHOTO"

    goto :goto_0

    .line 170
    :pswitch_20
    const-string v0, "PMA_PERF_OLDINBOX_CONVERSATION_LOAD"

    goto :goto_0

    .line 172
    :pswitch_21
    const-string v0, "PMA_PERF_COMMSHUB_CONVERSATION_LOAD_SYNC"

    goto :goto_0

    .line 174
    :pswitch_22
    const-string v0, "PMA_PERF_COMMSHUB_MESSAGE_LIST_LOAD_FIRST_PAGE_SYNC"

    goto :goto_0

    .line 176
    :pswitch_23
    const-string v0, "PMA_PERF_THREADLIST_TO_THREADVIEW"

    goto :goto_0

    .line 178
    :pswitch_24
    const-string v0, "PMA_PERF_FACEWEB_CREATE"

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x6
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
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
    .end packed-switch
.end method
