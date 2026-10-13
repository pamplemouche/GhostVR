.class public Lcom/facebook/rti/common/util/UserAgent;
.super Ljava/lang/Object;
.source "UserAgent.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFbAppName:Ljava/lang/String;

.field private final mLocaleOverride:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

.field private final mUserAgentOverride:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/common/util/RtiBuildInfoUtil;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/common/util/UserAgent;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/RtiBuildInfoUtil;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/common/util/RtiBuildInfoUtil;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/rti/common/util/RtiBuildInfoUtil;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/rti/common/util/UserAgent;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/facebook/rti/common/util/UserAgent;->mRtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    .line 51
    iput-object p3, p0, Lcom/facebook/rti/common/util/UserAgent;->mFbAppName:Ljava/lang/String;

    .line 52
    if-eqz p4, :cond_0

    const-string v0, "User-Agent"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/facebook/rti/common/util/UserAgent;->mUserAgentOverride:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/facebook/rti/common/util/UserAgent;->mLocaleOverride:Ljava/lang/String;

    .line 54
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/util/UserAgent;->xmlEncodeNonLatin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "/"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCarrier()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    sget-object v0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/common/util/UserAgent;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    const-class v3, Landroid/telephony/TelephonyManager;

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->getSystemService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getDisplayMetrics()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/rti/common/util/UserAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 142
    new-instance v2, Landroid/graphics/Point;

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    .line 146
    sget-object v0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v3, p0, Lcom/facebook/rti/common/util/UserAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    const-class v5, Landroid/view/WindowManager;

    .line 147
    invoke-virtual {v0, v3, v4, v5}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->getSystemService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 149
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 150
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{density="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/rti/common/util/UserAgent;->mLocaleOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/facebook/rti/common/util/UserAgent;->mLocaleOverride:Ljava/lang/String;

    .line 170
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private isAndroidGoDevice()Z
    .locals 2

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/common/util/UserAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.ram.low"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 178
    :goto_0
    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private xmlEncodeNonLatin(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    if-eqz p1, :cond_3

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 190
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 192
    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    .line 193
    const-string v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_1

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 197
    :cond_1
    const-string v3, "&#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 202
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_2
    return-object v0

    :cond_3
    const-string v0, ""

    goto :goto_2
.end method


# virtual methods
.method public getShortUserAgentString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "%s/%s;%s/%s;"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "FBAN"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/rti/common/util/UserAgent;->mFbAppName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "FBAV"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/facebook/rti/common/util/UserAgent;->mRtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    .line 119
    invoke-virtual {v4}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getVersionName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 117
    invoke-static {v1, v2}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    iget-object v0, p0, Lcom/facebook/rti/common/util/UserAgent;->mUserAgentOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/facebook/rti/common/util/UserAgent;->mUserAgentOverride:Ljava/lang/String;

    .line 107
    :goto_0
    return-object v0

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v0, "%s/%s;%s/%s;%s/%s;%s/%s;%s/%s;"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FBAN"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/facebook/rti/common/util/UserAgent;->mFbAppName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, "FBAV"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/facebook/rti/common/util/UserAgent;->mRtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    .line 73
    invoke-virtual {v3}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getVersionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "FBBV"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/facebook/rti/common/util/UserAgent;->mRtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    .line 75
    invoke-virtual {v4}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getBuildNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "FBDM"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 77
    invoke-direct {p0}, Lcom/facebook/rti/common/util/UserAgent;->getDisplayMetrics()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/rti/common/util/UserAgent;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "FBLC"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 79
    invoke-direct {p0}, Lcom/facebook/rti/common/util/UserAgent;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/rti/common/util/UserAgent;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 68
    invoke-static {v0, v2}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v2, "%s/%s;%s/%s;%s/%s;%s/%s;%s/%s;%s/%s;%s/%s;"

    const/16 v0, 0xe

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "FBCR"

    aput-object v0, v3, v5

    .line 85
    invoke-direct {p0}, Lcom/facebook/rti/common/util/UserAgent;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/util/UserAgent;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "FBMF"

    aput-object v0, v3, v7

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 87
    invoke-direct {p0, v0}, Lcom/facebook/rti/common/util/UserAgent;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    const-string v0, "FBBD"

    aput-object v0, v3, v9

    const/4 v0, 0x5

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 89
    invoke-direct {p0, v4}, Lcom/facebook/rti/common/util/UserAgent;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "FBPN"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/facebook/rti/common/util/UserAgent;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "FBDV"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    .line 93
    invoke-direct {p0}, Lcom/facebook/rti/common/util/UserAgent;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/rti/common/util/UserAgent;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xa

    const-string v4, "FBSV"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    .line 95
    invoke-direct {p0}, Lcom/facebook/rti/common/util/UserAgent;->getOSVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/rti/common/util/UserAgent;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xc

    const-string v4, "FBLR"

    aput-object v4, v3, v0

    const/16 v4, 0xd

    .line 97
    invoke-direct {p0}, Lcom/facebook/rti/common/util/UserAgent;->isAndroidGoDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-direct {p0, v0}, Lcom/facebook/rti/common/util/UserAgent;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 82
    invoke-static {v2, v3}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v0, "%s/%s;"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "FBBK"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, "%s/%s:%s;"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "FBCA"

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 103
    invoke-direct {p0, v3}, Lcom/facebook/rti/common/util/UserAgent;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/facebook/rti/common/util/UserAgent;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 102
    invoke-static {v0, v2}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method
