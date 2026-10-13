.class public Lcom/oculus/vrshell/util/FeatureFlagsUtil;
.super Ljava/lang/Object;
.source "FeatureFlagsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;
    }
.end annotation


# static fields
.field private static final AUI_V2_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private static final AVATARS_CAPSENSE_HANDS_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private static final CONTEXTUAL_BUTTON_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private static final DUAL_CONTROLLER_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private static final HOME_ENV_AUDIO_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private static final KEYBOARD_REMOTE_INPUT_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private static final KEYBOARD_TRANSCRIPTION_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private static final LUCID_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private static final SYSTEM_UX_APK_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private static final TEST_FLAG_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private static final VIDEOSDK_DEBUG_SURFACE_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "contextual_button"

    .line 34
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->CONTEXTUAL_BUTTON_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 35
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "dual_controller"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->DUAL_CONTROLLER_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 36
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "aui_v2"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->AUI_V2_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 37
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "test_flag"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->TEST_FLAG_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 38
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "lucid"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->LUCID_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 39
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "home_env_audio"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->HOME_ENV_AUDIO_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 40
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "keyboard_remote_input"

    .line 41
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->KEYBOARD_REMOTE_INPUT_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 42
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "system_ux_apk"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->SYSTEM_UX_APK_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 43
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "keyboard_transcription"

    .line 44
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->KEYBOARD_TRANSCRIPTION_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 45
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "videosdk_debug_surface"

    .line 46
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->VIDEOSDK_DEBUG_SURFACE_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 47
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "avatars_capsense_hands"

    .line 48
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->AVATARS_CAPSENSE_HANDS_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->CONTEXTUAL_BUTTON_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method static synthetic access$100()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->DUAL_CONTROLLER_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->TEST_FLAG_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method static synthetic access$200()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->AUI_V2_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method static synthetic access$300()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->LUCID_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method static synthetic access$400()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->HOME_ENV_AUDIO_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method static synthetic access$500()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->KEYBOARD_REMOTE_INPUT_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method static synthetic access$600()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->SYSTEM_UX_APK_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method static synthetic access$700()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->KEYBOARD_TRANSCRIPTION_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method static synthetic access$800()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->VIDEOSDK_DEBUG_SURFACE_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method static synthetic access$900()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->AVATARS_CAPSENSE_HANDS_PREFKEY:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method public static buildFeatureFlagValue(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "on"

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v0, "true"

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "off"

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "false"

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Unable to parse input %s. Allowed input: on/true/1 to turn flag on and off/false/0 to turn flag off."

    .line 99
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public static getAllFlagsAsList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->values()[Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v4}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->isFeatureEnabled(Landroid/content/Context;Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;)Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isFeatureEnabled(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)Z
    .locals 0

    .line 61
    invoke-static {p0, p1, p2}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)Z

    move-result p0

    return p0
.end method

.method public static isFeatureEnabled(Landroid/content/Context;Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;)Z
    .locals 1

    .line 51
    invoke-virtual {p1}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->getPrefKey()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->getDefaultValue()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->isFeatureEnabled(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)Z

    move-result p0

    return p0
.end method

.method public static resetAllFeatureFlags(Landroid/content/Context;)V
    .locals 5

    .line 70
    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->values()[Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    move-result-object v0

    .line 71
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 72
    invoke-virtual {v3}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->getPrefKey()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v4

    invoke-virtual {v3}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->getDefaultValue()Z

    move-result v3

    invoke-static {p0, v4, v3}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->setFeatureFlag(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setFeatureFlag(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V
    .locals 0

    .line 66
    invoke-static {p0, p1, p2}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    return-void
.end method

.method public static setFeatureFlag(Landroid/content/Context;Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;Z)V
    .locals 0

    .line 56
    invoke-virtual {p1}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->getPrefKey()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->setFeatureFlag(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    return-void
.end method
