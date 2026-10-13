.class public Lcom/facebook/quicklog/identifiers/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    shr-int/lit8 v0, p0, 0x10

    int-to-short v0, v0

    .line 25
    const v1, 0xffff

    and-int/2addr v1, p0

    int-to-short v1, v1

    .line 26
    packed-switch v0, :pswitch_data_0

    .line 778
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_MODULE"

    :goto_0
    return-object v0

    .line 28
    :pswitch_1
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Perf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_2
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MediaGallery;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_3
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Events;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :pswitch_4
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Search;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_5
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/TestModuleOne;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_6
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/TestModuleTwo;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_7
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Feed;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_8
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Bitmaps;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_9
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Composer;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Drawablehierarchy;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/EntityCards;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GroupsFeed;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Imagepipeline;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Pages;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Photos;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_10
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Places;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_11
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Privacy;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_12
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Saved;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_13
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Stickers;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_14
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Timeline;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_15
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Uberbar;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_16
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Browser;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_17
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Video;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_18
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Reaction;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_19
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Groups;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_1a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Creativeediting;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 80
    :pswitch_1b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Login;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 82
    :pswitch_1c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Faceweb;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 84
    :pswitch_1d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CameraFlow;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 86
    :pswitch_1e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/BackgroundLocationSettings;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 88
    :pswitch_1f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/BackgroundTaskRunner;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 90
    :pswitch_20
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Bookmark;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 92
    :pswitch_21
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ConditionalWorker;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 94
    :pswitch_22
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Pymk;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 96
    :pswitch_23
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Friending;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 98
    :pswitch_24
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FriendsNearby;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 100
    :pswitch_25
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Graphql;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 102
    :pswitch_26
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Location;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 104
    :pswitch_27
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Notifications;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 106
    :pswitch_28
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Threads;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 108
    :pswitch_29
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ThreadList;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 110
    :pswitch_2a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GeneralUi;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 112
    :pswitch_2b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Ufi;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 114
    :pswitch_2c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Facerec;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 116
    :pswitch_2d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Init;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 118
    :pswitch_2e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FriendList;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 120
    :pswitch_2f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FriendFinder;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 122
    :pswitch_30
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Registration;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 124
    :pswitch_31
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MinutiaeObjectPicker;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :pswitch_32
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MinutiaeVerbPicker;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 128
    :pswitch_33
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Resources;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 130
    :pswitch_34
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PowerData;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 132
    :pswitch_35
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Contacts;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 134
    :pswitch_36
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/NetworkPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :pswitch_37
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Goodwill;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :pswitch_38
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Interaction;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 140
    :pswitch_39
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/NegativeFeedback;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 142
    :pswitch_3a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Auth;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :pswitch_3b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ImageFetch;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 146
    :pswitch_3c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ImagesFetch;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 148
    :pswitch_3d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Messenger;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :pswitch_3e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/UriMap;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :pswitch_3f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/BackgroundWork;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 154
    :pswitch_40
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Mqtt;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 156
    :pswitch_41
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AdInterfaces;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 158
    :pswitch_42
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Hello;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 160
    :pswitch_43
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/InstantArticles;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 162
    :pswitch_44
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/DeepNetworkData;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :pswitch_45
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Divebar;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 166
    :pswitch_46
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Phoneapp;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 168
    :pswitch_47
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AppTabPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    :pswitch_48
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/InstantShopping;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 172
    :pswitch_49
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Commerce;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 174
    :pswitch_4a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PowerMetrics;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 176
    :pswitch_4b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ColdStart;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 178
    :pswitch_4c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PokesDash;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 180
    :pswitch_4d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AdsManager;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 182
    :pswitch_4e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ReactNativeBridge;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 184
    :pswitch_4f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GroupsTab;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 186
    :pswitch_50
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ReactClass;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 188
    :pswitch_51
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Relay;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :pswitch_52
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Platform;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 192
    :pswitch_53
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Loom;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 194
    :pswitch_54
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Fbanalytics;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 196
    :pswitch_55
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Reactions;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 198
    :pswitch_56
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Notes;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 200
    :pswitch_57
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GraphqlAndroidCursor;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 202
    :pswitch_58
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Crash;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 204
    :pswitch_59
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Dextricks;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 206
    :pswitch_5a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Components;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 208
    :pswitch_5b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Offers;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 210
    :pswitch_5c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Videoediting;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 212
    :pswitch_5d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ProcAndPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 214
    :pswitch_5e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GraphqlAndroidConnectionFetcher;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 216
    :pswitch_5f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/NotificationsFriending;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 218
    :pswitch_60
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/DiskConnectionStore;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 220
    :pswitch_61
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Prompts;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 222
    :pswitch_62
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Logout;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 224
    :pswitch_63
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GraphqlAnroidConsistency;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 226
    :pswitch_64
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PagesLwiPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 228
    :pswitch_65
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PmaPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 230
    :pswitch_66
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Security;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 232
    :pswitch_67
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/VideoHome;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 234
    :pswitch_68
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/LigerNetworkStats;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 236
    :pswitch_69
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CompactDisk;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 238
    :pswitch_6a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Inspirations;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 240
    :pswitch_6b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidCamera;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 242
    :pswitch_6c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Moments;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 244
    :pswitch_6d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Marketplace;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 246
    :pswitch_6e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CameraPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 248
    :pswitch_6f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ApplicationModules;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 250
    :pswitch_70
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PerceptionCamera;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 252
    :pswitch_71
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Msqrd;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 254
    :pswitch_72
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ComponentScript;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 256
    :pswitch_73
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ProfileDiscoveryCuration;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 258
    :pswitch_74
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Cloudseeder;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 260
    :pswitch_75
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PrCamera;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 262
    :pswitch_76
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CityGuides;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 264
    :pswitch_77
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FeedUnitPyml;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 266
    :pswitch_78
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Snacks;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 268
    :pswitch_79
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/RtcMediaDrill;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 270
    :pswitch_7a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Workplace;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 272
    :pswitch_7b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Aboutpage;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 274
    :pswitch_7c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Newsfeed;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :pswitch_7d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Ctscan;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 278
    :pswitch_7e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Siren;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 280
    :pswitch_7f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/NativeTemplates;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 282
    :pswitch_80
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MinutiaeFeelingSelector;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 284
    :pswitch_81
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MinutiaeObjectSelector;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 286
    :pswitch_82
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/LocalSurface;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 288
    :pswitch_83
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CharitableGiving;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 290
    :pswitch_84
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Stories;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 292
    :pswitch_85
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Direct;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 294
    :pswitch_86
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Sharesheet;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 296
    :pswitch_87
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/TestAndroid;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 298
    :pswitch_88
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/TestAndroidModule;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 300
    :pswitch_89
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Mobileconfig;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 302
    :pswitch_8a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Lithium;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 304
    :pswitch_8b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ReactNativeTti;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 306
    :pswitch_8c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Livewith;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 308
    :pswitch_8d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MessengerInboxAds;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 310
    :pswitch_8e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MessengerDiscover;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 312
    :pswitch_8f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AmlcameratestPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 314
    :pswitch_90
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Live;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 316
    :pswitch_91
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/BusinessIntegrity;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 318
    :pswitch_92
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PrivacyInvalidation;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 320
    :pswitch_93
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/LeadGenAds;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 322
    :pswitch_94
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ObjSel;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 324
    :pswitch_95
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Facecast;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 326
    :pswitch_96
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidLocalMedia;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 328
    :pswitch_97
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Keyframes;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 330
    :pswitch_98
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidTransliterationKeyboard;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 332
    :pswitch_99
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CaffeTwo;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 334
    :pswitch_9a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MessengerLite;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 336
    :pswitch_9b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgClientPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 338
    :pswitch_9c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Oculus;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 340
    :pswitch_9d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MobileJsDevReload;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 342
    :pswitch_9e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ProfileAboutRn;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 344
    :pswitch_9f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CoreHealth;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 346
    :pswitch_a0
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ScrollPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 348
    :pswitch_a1
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FeedNotLoading;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 350
    :pswitch_a2
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/RtcPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 352
    :pswitch_a3
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Camera;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 354
    :pswitch_a4
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/BonfireForAndroid;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 356
    :pswitch_a5
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgExplore;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 358
    :pswitch_a6
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AnimationPerformanceLogger;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 360
    :pswitch_a7
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgComments;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 362
    :pswitch_a8
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/OverlayAnimations;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 364
    :pswitch_a9
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Qrcode;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 366
    :pswitch_aa
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgGrowth;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 368
    :pswitch_ab
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Hermes;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 370
    :pswitch_ac
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MessengerLigerNetworkPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 372
    :pswitch_ad
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/LocalSurfaceAndroidPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 374
    :pswitch_ae
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgStoriesEngagement;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 376
    :pswitch_af
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/JscMobileLabMetrics;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 378
    :pswitch_b0
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidGraphServices;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 380
    :pswitch_b1
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/StallTracker;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 382
    :pswitch_b2
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgCamera;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 384
    :pswitch_b3
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgClientStability;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 386
    :pswitch_b4
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MobileHome;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 388
    :pswitch_b5
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Watch;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 390
    :pswitch_b6
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Talk;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 392
    :pswitch_b7
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Tigon;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 394
    :pswitch_b8
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/EntrypointsLoggingMessenger;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 396
    :pswitch_b9
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/BundleSplitting;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 398
    :pswitch_ba
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GroupsSimpleFeed;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 400
    :pswitch_bb
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgFeedSharingProfile;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 402
    :pswitch_bc
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgVideo;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 404
    :pswitch_bd
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgFeed;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 406
    :pswitch_be
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Maps;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 408
    :pswitch_bf
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PagesInsights;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 410
    :pswitch_c0
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Movies;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 412
    :pswitch_c1
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidWebview;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 414
    :pswitch_c2
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/JsiPerftest;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 416
    :pswitch_c3
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Fnf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 418
    :pswitch_c4
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteNetworkMessages;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 420
    :pswitch_c5
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AlohaTti;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 422
    :pswitch_c6
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ImagepipelineTwo;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 424
    :pswitch_c7
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/InAppBrowser;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 426
    :pswitch_c8
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteColdStartup;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 428
    :pswitch_c9
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AlohaColdStarts;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 430
    :pswitch_ca
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgDirect;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 432
    :pswitch_cb
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/NativeTemplateJs;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 434
    :pswitch_cc
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Ditto;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 436
    :pswitch_cd
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GroupsAdmin;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 438
    :pswitch_ce
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgHashtagPage;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 440
    :pswitch_cf
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/SurveyEngPlatformRemix;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 442
    :pswitch_d0
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ProfileInitialLoad;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 444
    :pswitch_d1
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CreatorAppAndroidPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 446
    :pswitch_d2
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteClientPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 448
    :pswitch_d3
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Reliability;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 450
    :pswitch_d4
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MessengerBroadcastFlow;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 452
    :pswitch_d5
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/SocialPlayer;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 454
    :pswitch_d6
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MessengerBroadcastFlowDeprecated;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 456
    :pswitch_d7
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ThreesixtyPhotos;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 458
    :pswitch_d8
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PrivateGallery;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 460
    :pswitch_d9
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ProductQuality;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 462
    :pswitch_da
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Mobilelab;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 464
    :pswitch_db
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GamingDestination;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 466
    :pswitch_dc
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/LocalSearchAndroid;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 468
    :pswitch_dd
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/StoriesArchive;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 470
    :pswitch_de
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ArDelivery;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 472
    :pswitch_df
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PrivacyActivityLogTti;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 474
    :pswitch_e0
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Mlkit;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 476
    :pswitch_e1
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/InstantRender;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 478
    :pswitch_e2
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ComposerSprouts;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 480
    :pswitch_e3
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MediaUploadPipeline;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 482
    :pswitch_e4
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CheckoutPurchaseExperiences;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 484
    :pswitch_e5
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgImagePipeline;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 486
    :pswitch_e6
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/UserFunding;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 488
    :pswitch_e7
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgScrollPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 490
    :pswitch_e8
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/StoriesFeedback;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 492
    :pswitch_e9
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/DiskIo;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 494
    :pswitch_ea
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidExperimentalTti;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 496
    :pswitch_eb
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidTimeToNetworkOut;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 498
    :pswitch_ec
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/TouchResponsiveness;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 500
    :pswitch_ed
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/WaPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 502
    :pswitch_ee
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgAppStart;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 504
    :pswitch_ef
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/StoriesFeedUnit;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 506
    :pswitch_f0
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Kototoro;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 508
    :pswitch_f1
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AdminSurfaceNt;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 510
    :pswitch_f2
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgNetworkPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 512
    :pswitch_f3
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Surfaces;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 514
    :pswitch_f4
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Navigation;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 516
    :pswitch_f5
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GemstoneMatchingHome;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 518
    :pswitch_f6
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PageCreationWelcomeNt;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 520
    :pswitch_f7
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PageCreationNameNt;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 522
    :pswitch_f8
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GamesAppAndroid;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 524
    :pswitch_f9
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FanFunding;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 526
    :pswitch_fa
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidImagesInfra;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 528
    :pswitch_fb
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/WiktorkTest;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 530
    :pswitch_fc
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/YouthCamera;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 532
    :pswitch_fd
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FeedsAdsRerank;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 534
    :pswitch_fe
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MobileBoost;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 536
    :pswitch_ff
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GemstoneProfile;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 538
    :pswitch_100
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Weather;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 540
    :pswitch_101
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Avatars;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 542
    :pswitch_102
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ForegroundService;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 544
    :pswitch_103
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/QplHealth;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 546
    :pswitch_104
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CompactdiskLegacy;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 548
    :pswitch_105
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MobileTopUps;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 550
    :pswitch_106
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidNewsfeedPing;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 552
    :pswitch_107
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/VideoProfiler;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 554
    :pswitch_108
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Fury;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 556
    :pswitch_109
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/DownloadOnDemand;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 558
    :pswitch_10a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/DigitalContentPayments;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 560
    :pswitch_10b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidJavaToNative;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 562
    :pswitch_10c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/LassoAndroidColdStart;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 564
    :pswitch_10d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/InstantExperienceAds;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 566
    :pswitch_10e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/BotDetection;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 568
    :pswitch_10f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidPigeon;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 570
    :pswitch_110
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgRtc;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 572
    :pswitch_111
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Bell;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 574
    :pswitch_112
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgDirectappPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 576
    :pswitch_113
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Agora;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 578
    :pswitch_114
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Athens;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 580
    :pswitch_115
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Npx;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 582
    :pswitch_116
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgTestModule;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 584
    :pswitch_117
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Threadview;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 586
    :pswitch_118
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PrCameraLite;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 588
    :pswitch_119
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MessengerIntegrity;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 590
    :pswitch_11a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Bugreport;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 592
    :pswitch_11b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/YasThreadview;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 594
    :pswitch_11c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GemstoneInterestedTab;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 596
    :pswitch_11d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GemstoneConversationStarter;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 598
    :pswitch_11e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgBoomerangPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 600
    :pswitch_11f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgDownloadableModule;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 602
    :pswitch_120
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MessengerSearch;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 604
    :pswitch_121
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Extensions;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 606
    :pswitch_122
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/LocationProducts;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 608
    :pswitch_123
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FeedDeliveryHealth;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 610
    :pswitch_124
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgNavigationLatency;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 612
    :pswitch_125
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/NativeTemplatesCpp;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 614
    :pswitch_126
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/RecommendationApp;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 616
    :pswitch_127
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/OculusTwilight;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 618
    :pswitch_128
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GemstoneMessaging;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 620
    :pswitch_129
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgSearch;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 622
    :pswitch_12a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AppChoreographer;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 624
    :pswitch_12b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ReactOtaUpdate;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 626
    :pswitch_12c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Comments;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 628
    :pswitch_12d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteStories;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 630
    :pswitch_12e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/HighSchoolNetworks;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 632
    :pswitch_12f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/VideoAdsWatchAndBrowse;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 634
    :pswitch_130
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/TransientAnalysis;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 636
    :pswitch_131
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ImagepipelineBoost;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 638
    :pswitch_132
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ProfileReliability;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 640
    :pswitch_133
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/LiveLinearVideoChannels;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 642
    :pswitch_134
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/SmartCapture;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 644
    :pswitch_135
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Jobs;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 646
    :pswitch_136
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Crs;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 648
    :pswitch_137
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Skylight;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 650
    :pswitch_138
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FblitePagingProvider;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 652
    :pswitch_139
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/DarkroomCameraRollHighlights;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 654
    :pswitch_13a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgNavigation;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 656
    :pswitch_13b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CameraRoll;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 658
    :pswitch_13c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Superpack;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 660
    :pswitch_13d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/DownloadableModules;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 662
    :pswitch_13e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/StorySurface;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 664
    :pswitch_13f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CameraRollTtrc;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 666
    :pswitch_140
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/NewsfeedViewpoint;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 668
    :pswitch_141
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgQuickPromotions;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 670
    :pswitch_142
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Spectrum;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 672
    :pswitch_143
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Settings;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 674
    :pswitch_144
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Yoga;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 676
    :pswitch_145
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/LassoAndroidVideoPlayback;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 678
    :pswitch_146
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/NewsCompass;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 680
    :pswitch_147
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MessengerBusinessTab;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 682
    :pswitch_148
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbAppMessaging;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 684
    :pswitch_149
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteLiteFeed;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 686
    :pswitch_14a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AlohaAppsInit;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 688
    :pswitch_14b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/UnifiedInbox;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 690
    :pswitch_14c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/QplInternal;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 692
    :pswitch_14d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/NeoParentPortal;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 694
    :pswitch_14e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/BusinessCrm;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 696
    :pswitch_14f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Bloks;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 698
    :pswitch_150
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbAnalyticsApp;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 700
    :pswitch_151
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CrfPlatform;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 702
    :pswitch_152
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ProfileEdit;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 704
    :pswitch_153
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/InstagramShopping;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 706
    :pswitch_154
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteReliability;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 708
    :pswitch_155
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FblitePerfDebugging;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 710
    :pswitch_156
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ThreedPhotos;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 712
    :pswitch_157
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteAsyncActions;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 714
    :pswitch_158
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgDownloadableStrings;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 716
    :pswitch_159
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Contextualconfig;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 718
    :pswitch_15a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CrisisTtrc;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 720
    :pswitch_15b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteClientInstrumentation;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 722
    :pswitch_15c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AnimationPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 724
    :pswitch_15d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/MessengerCowatch;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 726
    :pswitch_15e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/VideoChatLinks;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 728
    :pswitch_15f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/HygracewuTest;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 730
    :pswitch_160
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/PathProvider;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 732
    :pswitch_161
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ArCloudServices;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 734
    :pswitch_162
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgAssetUsage;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 736
    :pswitch_163
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteLiteNotifications;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 738
    :pswitch_164
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgPaymentModules;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 740
    :pswitch_165
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/IgInsights;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 742
    :pswitch_166
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/SubsampledExtensions;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 744
    :pswitch_167
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteMessagingPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 746
    :pswitch_168
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteReponsiveness;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 748
    :pswitch_169
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GltfScene;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 750
    :pswitch_16a
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/StoriesViewerPerformanceAndroid;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 752
    :pswitch_16b
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FbliteMediaPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 754
    :pswitch_16c
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/ContextualProfileInitialLoad;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 756
    :pswitch_16d
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/Loyalty;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 758
    :pswitch_16e
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/CrsHealth;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 760
    :pswitch_16f
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/XrPersistenceServices;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 762
    :pswitch_170
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/RtcPlatformClientPerf;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 764
    :pswitch_171
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/FrescoInstrumentation;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 766
    :pswitch_172
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/WorkspeedThreadview;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 768
    :pswitch_173
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AndroidTaskScheduling;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 770
    :pswitch_174
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/AssistantInteractionChanged;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 772
    :pswitch_175
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/LiveFeed;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 774
    :pswitch_176
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GemstoneOnboarding;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 776
    :pswitch_177
    invoke-static {v1}, Lcom/facebook/quicklog/identifiers/GraphqlSubscriptions;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_0
        :pswitch_26
        :pswitch_0
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_2c
        :pswitch_0
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_0
        :pswitch_35
        :pswitch_0
        :pswitch_0
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3c
        :pswitch_3d
        :pswitch_0
        :pswitch_0
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_0
        :pswitch_45
        :pswitch_0
        :pswitch_0
        :pswitch_46
        :pswitch_47
        :pswitch_0
        :pswitch_0
        :pswitch_48
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_49
        :pswitch_0
        :pswitch_4a
        :pswitch_0
        :pswitch_4b
        :pswitch_0
        :pswitch_0
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_55
        :pswitch_56
        :pswitch_0
        :pswitch_57
        :pswitch_58
        :pswitch_0
        :pswitch_59
        :pswitch_0
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_0
        :pswitch_0
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_0
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_0
        :pswitch_0
        :pswitch_67
        :pswitch_68
        :pswitch_0
        :pswitch_69
        :pswitch_0
        :pswitch_6a
        :pswitch_0
        :pswitch_6b
        :pswitch_6c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6d
        :pswitch_0
        :pswitch_0
        :pswitch_6e
        :pswitch_6f
        :pswitch_0
        :pswitch_70
        :pswitch_0
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_0
        :pswitch_74
        :pswitch_75
        :pswitch_0
        :pswitch_0
        :pswitch_76
        :pswitch_0
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_0
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_0
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_0
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_0
        :pswitch_8b
        :pswitch_8c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8d
        :pswitch_8e
        :pswitch_0
        :pswitch_0
        :pswitch_8f
        :pswitch_0
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_0
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_0
        :pswitch_9e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9f
        :pswitch_0
        :pswitch_a0
        :pswitch_a1
        :pswitch_0
        :pswitch_0
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_0
        :pswitch_a7
        :pswitch_a8
        :pswitch_0
        :pswitch_a9
        :pswitch_aa
        :pswitch_0
        :pswitch_ab
        :pswitch_0
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_0
        :pswitch_bb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_bc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_0
        :pswitch_c4
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_0
        :pswitch_c8
        :pswitch_0
        :pswitch_c9
        :pswitch_ca
        :pswitch_0
        :pswitch_0
        :pswitch_cb
        :pswitch_0
        :pswitch_0
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_0
        :pswitch_cf
        :pswitch_d0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d1
        :pswitch_d2
        :pswitch_d3
        :pswitch_d4
        :pswitch_0
        :pswitch_d5
        :pswitch_0
        :pswitch_d6
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_0
        :pswitch_da
        :pswitch_0
        :pswitch_db
        :pswitch_dc
        :pswitch_0
        :pswitch_dd
        :pswitch_de
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_df
        :pswitch_0
        :pswitch_0
        :pswitch_e0
        :pswitch_e1
        :pswitch_0
        :pswitch_e2
        :pswitch_0
        :pswitch_e3
        :pswitch_e4
        :pswitch_0
        :pswitch_e5
        :pswitch_e6
        :pswitch_0
        :pswitch_e7
        :pswitch_0
        :pswitch_0
        :pswitch_e8
        :pswitch_0
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_ec
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_ed
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_ee
        :pswitch_ef
        :pswitch_f0
        :pswitch_0
        :pswitch_0
        :pswitch_f1
        :pswitch_0
        :pswitch_0
        :pswitch_f2
        :pswitch_0
        :pswitch_0
        :pswitch_f3
        :pswitch_0
        :pswitch_f4
        :pswitch_f5
        :pswitch_f6
        :pswitch_f7
        :pswitch_0
        :pswitch_f8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f9
        :pswitch_fa
        :pswitch_fb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_fc
        :pswitch_fd
        :pswitch_0
        :pswitch_fe
        :pswitch_ff
        :pswitch_0
        :pswitch_0
        :pswitch_100
        :pswitch_101
        :pswitch_102
        :pswitch_103
        :pswitch_104
        :pswitch_0
        :pswitch_0
        :pswitch_105
        :pswitch_106
        :pswitch_107
        :pswitch_108
        :pswitch_0
        :pswitch_0
        :pswitch_109
        :pswitch_10a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10b
        :pswitch_10c
        :pswitch_0
        :pswitch_10d
        :pswitch_10e
        :pswitch_10f
        :pswitch_110
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_111
        :pswitch_112
        :pswitch_113
        :pswitch_114
        :pswitch_0
        :pswitch_115
        :pswitch_0
        :pswitch_0
        :pswitch_116
        :pswitch_117
        :pswitch_118
        :pswitch_119
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11b
        :pswitch_11c
        :pswitch_11d
        :pswitch_11e
        :pswitch_11f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_120
        :pswitch_121
        :pswitch_122
        :pswitch_0
        :pswitch_123
        :pswitch_0
        :pswitch_124
        :pswitch_125
        :pswitch_126
        :pswitch_0
        :pswitch_0
        :pswitch_127
        :pswitch_128
        :pswitch_0
        :pswitch_129
        :pswitch_0
        :pswitch_12a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12b
        :pswitch_12c
        :pswitch_12d
        :pswitch_0
        :pswitch_12e
        :pswitch_12f
        :pswitch_130
        :pswitch_131
        :pswitch_132
        :pswitch_0
        :pswitch_133
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_134
        :pswitch_135
        :pswitch_0
        :pswitch_0
        :pswitch_136
        :pswitch_137
        :pswitch_138
        :pswitch_139
        :pswitch_13a
        :pswitch_0
        :pswitch_13b
        :pswitch_13c
        :pswitch_13d
        :pswitch_0
        :pswitch_13e
        :pswitch_0
        :pswitch_13f
        :pswitch_140
        :pswitch_141
        :pswitch_0
        :pswitch_142
        :pswitch_143
        :pswitch_144
        :pswitch_145
        :pswitch_0
        :pswitch_146
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_147
        :pswitch_148
        :pswitch_149
        :pswitch_0
        :pswitch_0
        :pswitch_14a
        :pswitch_14b
        :pswitch_14c
        :pswitch_14d
        :pswitch_0
        :pswitch_14e
        :pswitch_0
        :pswitch_0
        :pswitch_14f
        :pswitch_0
        :pswitch_150
        :pswitch_151
        :pswitch_0
        :pswitch_152
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_153
        :pswitch_0
        :pswitch_154
        :pswitch_155
        :pswitch_156
        :pswitch_0
        :pswitch_157
        :pswitch_0
        :pswitch_158
        :pswitch_159
        :pswitch_15a
        :pswitch_15b
        :pswitch_15c
        :pswitch_15d
        :pswitch_15e
        :pswitch_0
        :pswitch_15f
        :pswitch_160
        :pswitch_0
        :pswitch_161
        :pswitch_0
        :pswitch_0
        :pswitch_162
        :pswitch_163
        :pswitch_0
        :pswitch_0
        :pswitch_164
        :pswitch_165
        :pswitch_0
        :pswitch_166
        :pswitch_167
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_168
        :pswitch_169
        :pswitch_0
        :pswitch_0
        :pswitch_16a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16c
        :pswitch_0
        :pswitch_0
        :pswitch_16d
        :pswitch_0
        :pswitch_0
        :pswitch_16e
        :pswitch_0
        :pswitch_16f
        :pswitch_170
        :pswitch_171
        :pswitch_172
        :pswitch_173
        :pswitch_174
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_175
        :pswitch_0
        :pswitch_0
        :pswitch_176
        :pswitch_177
    .end packed-switch
.end method
