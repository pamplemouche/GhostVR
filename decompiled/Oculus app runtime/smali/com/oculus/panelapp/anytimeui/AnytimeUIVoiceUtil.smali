.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;
.super Ljava/lang/Object;
.source "AnytimeUIVoiceUtil.java"


# static fields
.field private static final AUI_TO_VOICE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PROMPT_GAP:J = 0x39777800L

.field private static final VOICE_ENABLED:Ljava/lang/String; = "ENABLED"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    .line 117
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_home:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_detail_button_home:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_library:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_detail_button_library:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_store:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_detail_button_store:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_internet:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_detail_button_internet:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_gallery:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_detail_button_gallery:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_tv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_detail_button_tv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_search:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_detail_button_search:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->people_detail_events:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_detail_button_events:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canShowPrompt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "en"

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static maybePromptForVoiceSetting(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;II)V
    .locals 3

    .line 47
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getVoiceSetting()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->canShowPrompt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    sget-object v1, Lcom/oculus/vrshell/VrShellConst;->LAST_VOICE_VOLUME_PROMPT_TOAST:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-static {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->minTimePassedSinceLastPrompt(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sessionless__oculus_voice_suggestion_prompt_universe"

    const-string v2, "is_voice_prompt_toast_enabled"

    .line 53
    invoke-virtual {p1, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isQEParamEnabledAndLogExposure(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ENABLED"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-le p3, p2, :cond_1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$string;->enabled_voice_volume_prompt_up:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$string;->enabled_voice_volume_prompt_down:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$string;->disabled_voice_volume_prompt:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    :goto_0
    invoke-static {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->showToastPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    sget-object p1, Lcom/oculus/vrshell/VrShellConst;->LAST_VOICE_VOLUME_PROMPT_TOAST:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-static {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->updateLastSeenTime(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static maybeVoicePromptForAUIButton(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;I)V
    .locals 3

    .line 19
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getVoiceSetting()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->canShowPrompt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    sget-object v1, Lcom/oculus/vrshell/VrShellConst;->LAST_VOICE_PROMPT_TOAST:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-static {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->minTimePassedSinceLastPrompt(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "sessionless__oculus_voice_suggestion_prompt_universe"

    const-string v2, "is_voice_prompt_toast_enabled"

    .line 25
    invoke-virtual {p1, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isQEParamEnabledAndLogExposure(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ENABLED"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->AUI_TO_VOICE_MAP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->enabled_voice_aui_navigation_prompt:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 34
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$string;->disabled_voice_aui_navigation_prompt:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 39
    :goto_0
    invoke-static {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->showToastPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    sget-object p1, Lcom/oculus/vrshell/VrShellConst;->LAST_VOICE_PROMPT_TOAST:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-static {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->updateLastSeenTime(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static minTimePassedSinceLastPrompt(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Z
    .locals 4

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 102
    invoke-static {p0, p1, v2, v3}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getLong(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;J)J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x39777800

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static showToastPrompt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Lcom/oculus/notifications/NotificationSender;->getNotifIcon(Ljava/lang/String;)I

    move-result v7

    sget-object v11, Lcom/oculus/notifications/NotificationsDisplayDuration;->DEFAULT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 80
    invoke-static/range {v1 .. v16}, Lcom/oculus/notifications/NotificationSender;->sendInternalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLcom/oculus/notifications/NotificationsDisplayDuration;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method

.method private static updateLastSeenTime(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)V
    .locals 2

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putLong(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;J)V

    return-void
.end method
