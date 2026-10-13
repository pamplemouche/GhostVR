.class public Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;
.super Ljava/lang/Object;
.source "FbUserAgentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendAppInfo(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    .line 116
    new-instance v1, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;

    invoke-direct {v1, p0}, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;-><init>(Landroid/content/Context;)V

    .line 117
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v2, "%s/%s;%s/%s;%s/%d;%s/%d;"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "FBAN"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 122
    invoke-virtual {v1}, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "FBAV"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 124
    invoke-virtual {v1}, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "FBBV"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 126
    invoke-virtual {v1}, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->getAppVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "FBRV"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 128
    invoke-virtual {v1}, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->getReactBundleVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 118
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    return-void
.end method

.method private static cleanString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "null"

    .line 157
    :goto_0
    return-object v0

    .line 156
    :cond_0
    invoke-static {p0}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->xmlEncodeNonLatin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, "/"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->generateUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 80
    invoke-static {}, Lcom/facebook/fbreact/i18n/FbReactLocalesProvider;->get()Lcom/facebook/common/locale/ILocales;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/common/locale/ILocales;->getFacebookPlatformLocaleString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->xmlEncodeNonLatin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {p0, v1}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->appendAppInfo(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 85
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s/%s;%s/%s;%s/%s;%s/%s;%s/%s;%s/%s:%s;%s/%s;%s/%s;"

    const/16 v4, 0x11

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "FBLC"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 90
    invoke-static {v0}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "FBMF"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 92
    invoke-static {v5}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "FBBD"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 94
    invoke-static {v5}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "FBDV"

    aput-object v5, v4, v0

    const/4 v0, 0x7

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 96
    invoke-static {v5}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x8

    const-string v5, "FBSV"

    aput-object v5, v4, v0

    const/16 v0, 0x9

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 98
    invoke-static {v5}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0xa

    const-string v5, "FBCA"

    aput-object v5, v4, v0

    const/16 v0, 0xb

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 100
    invoke-static {v5}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0xc

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 101
    invoke-static {v5}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0xd

    const-string v5, "FBDM"

    aput-object v5, v4, v0

    const/16 v0, 0xe

    .line 103
    invoke-static {p0}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->getDisplayMetricsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0xf

    const-string v5, "FB_FW"

    aput-object v5, v4, v0

    const/16 v0, 0x10

    const-string v5, "1"

    .line 105
    invoke-static {v5}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 86
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static generateWebViewLikeUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 68
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v2, "Mozilla/5.0 (Linux; U; Android %s AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 %s Safari/534.30"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v4, 0x1

    .line 74
    invoke-static {p0}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    aput-object v1, v3, v4

    .line 69
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p0, v0}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->generateUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    const-string v1, "Mobile"

    goto :goto_0
.end method

.method private static getDisplayMetricsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 133
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    .line 135
    const-string/jumbo v0, "window"

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 138
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 143
    :goto_0
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

    .line 140
    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 141
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private static isTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 112
    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static xmlEncodeNonLatin(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 165
    if-eqz p0, :cond_3

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 167
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 169
    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    .line 170
    const-string v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_1

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 174
    :cond_1
    const-string v3, "&#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_2
    return-object v0

    :cond_3
    const-string v0, ""

    goto :goto_2
.end method
