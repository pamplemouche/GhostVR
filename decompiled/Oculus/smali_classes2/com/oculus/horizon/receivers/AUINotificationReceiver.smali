.class public Lcom/oculus/horizon/receivers/AUINotificationReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "AUINotificationReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final flicker_extra_key:Ljava/lang/String;

.field final intent_data_extra_key:Ljava/lang/String;

.field final intent_data_uri_key:Ljava/lang/String;

.field private mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusNotifications:Lcom/oculus/horizon/notifications/core/NotificationBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPartyMethods:Lcom/oculus/horizon/parties/api/PartyMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field final vrshell_events_panel:Ljava/lang/String;

.field final vrshell_friends_panel:Ljava/lang/String;

.field final vrshell_messages_panel:Ljava/lang/String;

.field final vrshell_party_invite_received_dialog_uri:Ljava/lang/String;

.field final vrshell_party_panel:Ljava/lang/String;

.field final vrshell_social_requests_panel:Ljava/lang/String;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/receivers/AUINotificationReceiver;)V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/receivers/AUINotificationReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/receivers/AUINotificationReceiver;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/horizon/parties/api/PartyMethods;->$ul_$xXXcom_oculus_horizon_parties_api_PartyMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/parties/api/PartyMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->mPartyMethods:Lcom/oculus/horizon/parties/api/PartyMethods;

    invoke-static {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginModule;->$ul_$xXXcom_oculus_horizon_platformplugin_PlatformPluginManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-static {p0}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->$ul_$xXXcom_oculus_horizon_notifications_core_NotificationBuilder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->mOculusNotifications:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 39
    const-string v0, "systemux://friends"

    iput-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->vrshell_friends_panel:Ljava/lang/String;

    .line 40
    const-string v0, "systemux://parties"

    iput-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->vrshell_party_panel:Ljava/lang/String;

    .line 41
    const-string v0, "systemux://messages"

    iput-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->vrshell_messages_panel:Ljava/lang/String;

    .line 42
    const-string v0, "systemux://events"

    iput-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->vrshell_events_panel:Ljava/lang/String;

    .line 43
    const-string v0, "systemux://social_requests"

    iput-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->vrshell_social_requests_panel:Ljava/lang/String;

    .line 44
    const-string v0, "systemux://dialog/social-receive-invite"

    iput-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->vrshell_party_invite_received_dialog_uri:Ljava/lang/String;

    .line 45
    const-string v0, "blackscreen"

    iput-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->flicker_extra_key:Ljava/lang/String;

    .line 46
    const-string v0, "intent_data"

    iput-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->intent_data_extra_key:Ljava/lang/String;

    .line 47
    const-string v0, "uri"

    iput-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->intent_data_uri_key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/receivers/AUINotificationReceiver;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/receivers/AUINotificationReceiver;)Lcom/oculus/horizon/notifications/core/NotificationBuilder;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->mOculusNotifications:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    return-object v0
.end method

.method private static baseUriFromFull(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 212
    const-string v1, "://"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 239
    if-eqz p0, :cond_0

    .line 241
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    sget-object v1, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse JSON object [%s]: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private static uriExtrasFromFull(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 220
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 227
    :cond_0
    if-eqz v0, :cond_1

    .line 229
    :goto_1
    if-nez v0, :cond_3

    .line 230
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 232
    :goto_2
    return-object v0

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 232
    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 10

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v0, "notification_properties"

    .line 63
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;

    .line 64
    const-string v1, "oculus_notification_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    const-string v1, "extra_custom_data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-static {p1, p0}, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/receivers/AUINotificationReceiver;)V

    .line 69
    new-instance v6, Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell.intent.action.LAUNCH"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v1, "com.oculus.vrshell"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, ""

    .line 73
    const/4 v2, 0x0

    .line 75
    sget-object v7, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_ACCEPTED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v7, v7, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    const-string v1, "systemux://friends"

    .line 79
    :cond_2
    sget-object v7, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->MIGRATED_NOTIF_TYPES:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 80
    invoke-static {v4}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isSocialNotification(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 81
    :cond_3
    invoke-virtual {v0}, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->getDeeplinkUri()Landroid/net/Uri;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_c

    .line 84
    invoke-static {v0}, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->baseUriFromFull(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v0}, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->uriExtrasFromFull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 90
    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v2, v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "entrypoint"

    const-string v7, "friend_request_notif"

    .line 93
    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "mustInteract"

    const-string v7, "true"

    .line 94
    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 100
    :cond_4
    :goto_1
    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->ROOM_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v2, v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    const-string v1, "systemux://social_requests"

    .line 102
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "entrypoint"

    const-string v7, "room_invite_notif"

    .line 104
    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "mustInteract"

    const-string v7, "true"

    .line 105
    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 109
    :cond_5
    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v2, v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v8, Lcom/oculus/horizon/receivers/MC$oculus_social;->should_launch_aui_party_invite_receive_dialog:J

    invoke-interface {v0, v8, v9}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 112
    const-string v0, "systemux://dialog/social-receive-invite"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 113
    invoke-static {v5}, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    :try_start_0
    const-string v2, "party_id"

    const-string v3, "party_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    const-string v2, "sender_id"

    const-string v3, "sender_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    const-string v2, "sender_alias"

    const-string v3, "sender_alias"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    const-string v2, "sender_name"

    const-string v3, "sender_name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    const-string v2, "source"

    const-string v3, "anytime_ui_party_invite_notif"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    const-string v2, "sender_photo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_6

    const-string v3, "null"

    if-eq v2, v3, :cond_6

    .line 122
    const-string v2, "sender_photo"

    const-string v3, "sender_photo"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_6
    :goto_2
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_7
    :goto_3
    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->MESSAGING_NEW_MESSAGE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v2, v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 168
    const-string v1, "systemux://messages"

    .line 169
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 170
    invoke-static {v5}, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 172
    :try_start_1
    const-string v3, "thread_id"

    const-string v7, "thread_id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :goto_4
    const-string v0, "entrypoint"

    const-string v3, "message_notif"

    .line 177
    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "mustInteract"

    const-string v7, "true"

    .line 178
    invoke-virtual {v0, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 179
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 182
    :cond_8
    invoke-static {v4}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isEventNotification(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 183
    const-string v1, "systemux://events"

    .line 184
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 185
    invoke-static {v5}, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    :try_start_2
    const-string v3, "event_id"

    .line 189
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "referrer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notification:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    :goto_5
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 197
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const-string v2, "intent_data"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 202
    const-string v1, "uri"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    const-string v0, "blackscreen"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    sget-object v2, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Cannot parse party info from: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v2, v3, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 130
    :cond_a
    const-string v0, "com.oculus.horizon.ACCEPT_PARTY_INVITE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 131
    const-string v0, "party_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->mPartyMethods:Lcom/oculus/horizon/parties/api/PartyMethods;

    new-instance v2, Lcom/oculus/horizon/receivers/AUINotificationReceiver$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/receivers/AUINotificationReceiver$1;-><init>(Lcom/oculus/horizon/receivers/AUINotificationReceiver;)V

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/parties/api/PartyMethods;->joinParty(Ljava/lang/String;Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 162
    :cond_b
    const-string v1, "systemux://parties"

    .line 163
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_3

    .line 173
    :catch_1
    move-exception v0

    .line 174
    sget-object v3, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->TAG:Ljava/lang/String;

    const-string v7, "Cannot parse thread_id from [%s]: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v3, v7, v8}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 191
    :catch_2
    move-exception v0

    .line 192
    sget-object v3, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Cannot parse event_id from [%s]: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v0, v7, v5

    invoke-static {v3, v4, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_c
    move-object v0, v2

    goto/16 :goto_1
.end method
