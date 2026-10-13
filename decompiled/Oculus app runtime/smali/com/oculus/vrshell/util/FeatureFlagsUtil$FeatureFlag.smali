.class public final enum Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;
.super Ljava/lang/Enum;
.source "FeatureFlagsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/util/FeatureFlagsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum IS_AUI_V2_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum IS_AVATARS_CAPSENSE_HANDS_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum IS_CONTEXTUAL_BUTTON_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum IS_DUAL_CONTROLLER_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum IS_HOME_ENV_AUDIO_OFF:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum IS_KEYBOARD_REMOTE_INPUT_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum IS_KEYBOARD_TRANSCRIPTION_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum IS_LUCID_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum IS_SYSTEM_UX_APK_ENABLED:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum IS_VIDEO_DEBUG_SURFACE_ENABLED:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

.field public static final enum TEST_FLAG:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;


# instance fields
.field private mDefaultValue:Z

.field private final mPrefKey:Lcom/oculus/vrshell/sharedprefs/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 120
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$000()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "IS_CONTEXTUAL_BUTTON_ON"

    invoke-direct {v0, v3, v2, v1, v2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_CONTEXTUAL_BUTTON_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 124
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$100()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "IS_DUAL_CONTROLLER_ON"

    invoke-direct {v0, v4, v3, v1, v3}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_DUAL_CONTROLLER_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 127
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$200()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/4 v4, 0x2

    const-string v5, "IS_AUI_V2_ON"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_AUI_V2_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 129
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$300()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/4 v5, 0x3

    const-string v6, "IS_LUCID_ON"

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_LUCID_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 131
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$400()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/4 v6, 0x4

    const-string v7, "IS_HOME_ENV_AUDIO_OFF"

    invoke-direct {v0, v7, v6, v1, v2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_HOME_ENV_AUDIO_OFF:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 133
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$500()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/4 v7, 0x5

    const-string v8, "IS_KEYBOARD_REMOTE_INPUT_ON"

    invoke-direct {v0, v8, v7, v1, v2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_KEYBOARD_REMOTE_INPUT_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 135
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$600()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/4 v8, 0x6

    const-string v9, "IS_SYSTEM_UX_APK_ENABLED"

    invoke-direct {v0, v9, v8, v1, v3}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_SYSTEM_UX_APK_ENABLED:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 137
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$700()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/4 v9, 0x7

    const-string v10, "IS_KEYBOARD_TRANSCRIPTION_ON"

    invoke-direct {v0, v10, v9, v1, v2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_KEYBOARD_TRANSCRIPTION_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 140
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$800()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/16 v10, 0x8

    const-string v11, "IS_VIDEO_DEBUG_SURFACE_ENABLED"

    invoke-direct {v0, v11, v10, v1, v2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_VIDEO_DEBUG_SURFACE_ENABLED:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 144
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$900()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/16 v11, 0x9

    const-string v12, "IS_AVATARS_CAPSENSE_HANDS_ON"

    invoke-direct {v0, v12, v11, v1, v2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_AVATARS_CAPSENSE_HANDS_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 147
    new-instance v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->access$1000()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/16 v12, 0xa

    const-string v13, "TEST_FLAG"

    invoke-direct {v0, v13, v12, v1, v2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;-><init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->TEST_FLAG:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    const/16 v0, 0xb

    .line 107
    new-array v0, v0, [Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_CONTEXTUAL_BUTTON_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_DUAL_CONTROLLER_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_AUI_V2_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_LUCID_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_HOME_ENV_AUDIO_OFF:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_KEYBOARD_REMOTE_INPUT_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_SYSTEM_UX_APK_ENABLED:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_KEYBOARD_TRANSCRIPTION_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_VIDEO_DEBUG_SURFACE_ENABLED:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_AVATARS_CAPSENSE_HANDS_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->TEST_FLAG:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    aput-object v1, v0, v12

    sput-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->$VALUES:[Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/oculus/vrshell/sharedprefs/PrefKey;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/vrshell/sharedprefs/PrefKey;",
            "Z)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput-object p3, p0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->mPrefKey:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 154
    iput-boolean p4, p0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->mDefaultValue:Z

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;
    .locals 5

    .line 173
    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->values()[Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 175
    invoke-virtual {v3}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;
    .locals 1

    .line 107
    const-class v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;
    .locals 1

    .line 107
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->$VALUES:[Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->mDefaultValue:Z

    return v0
.end method

.method public getPrefKey()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->mPrefKey:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method setDefaultValue(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 167
    iput-boolean p1, p0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->mDefaultValue:Z

    return-void
.end method
