.class public Lcom/oculus/platform/UserAgentBuilder;
.super Ljava/lang/Object;
.source "UserAgentBuilder.java"


# static fields
.field private static final FB_APP_NAME:Ljava/lang/String; = "FBAN"

.field private static final FB_APP_VERSION:Ljava/lang/String; = "FBAV"

.field private static final FB_BRAND:Ljava/lang/String; = "FBBD"

.field private static final FB_BUILD_VERSION:Ljava/lang/String; = "FBBV"

.field private static final FB_CARRIER:Ljava/lang/String; = "FBCR"

.field private static final FB_CPU_ABI:Ljava/lang/String; = "FBCA"

.field private static final FB_DEVICE:Ljava/lang/String; = "FBDV"

.field private static final FB_ENGINE:Ljava/lang/String; = "ENGINE"

.field private static final FB_LOCALE:Ljava/lang/String; = "FBLC"

.field private static final FB_MANUFACTURER:Ljava/lang/String; = "FBMF"

.field private static final FB_PACKAGE_NAME:Ljava/lang/String; = "FBPN"

.field private static final FB_PLATFORM:Ljava/lang/String; = "PLATFORM"

.field private static final FB_SYSTEM_VERSION:Ljava/lang/String; = "FBSV"

.field private static final FIXED_ORDER_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTIONAL_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHttpAgent:Ljava/lang/String;

.field private final mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/oculus/platform/UserAgentBuilder$1;

    invoke-direct {v0}, Lcom/oculus/platform/UserAgentBuilder$1;-><init>()V

    sput-object v0, Lcom/oculus/platform/UserAgentBuilder;->FIXED_ORDER_KEYS:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/oculus/platform/UserAgentBuilder$2;

    invoke-direct {v0}, Lcom/oculus/platform/UserAgentBuilder$2;-><init>()V

    sput-object v0, Lcom/oculus/platform/UserAgentBuilder;->OPTIONAL_KEYS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    .line 59
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 62
    iget-object v1, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v2, "FBBD"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v2, "FBDV"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v2, "FBCR"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBMF"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBSV"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBCA"

    const-string v2, "%s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 69
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "PLATFORM"

    const-string v2, "ANDROID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/oculus/platform/UserAgentBuilder;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/oculus/platform/UserAgentBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/platform/UserAgentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private xmlEncodeNonLatin(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    if-eqz p1, :cond_3

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 188
    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    .line 189
    const-string v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_1

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 193
    :cond_1
    const-string v3, "&#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_2
    return-object v0

    :cond_3
    const-string v0, ""

    goto :goto_2
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mHttpAgent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    sget-object v0, Lcom/oculus/platform/UserAgentBuilder;->FIXED_ORDER_KEYS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    const-string v3, "%s/%s;"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    iget-object v5, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lcom/oculus/platform/UserAgentBuilder;->OPTIONAL_KEYS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    iget-object v3, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    const-string v3, "%s/%s;"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    iget-object v5, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 166
    :cond_2
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "null"

    .line 175
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/platform/UserAgentBuilder;->xmlEncodeNonLatin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

.method public setAppName(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBAN"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBAV"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-object p0
.end method

.method public setBuildVersion(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBBV"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-object p0
.end method

.method public setEngine(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "ENGINE"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-object p0
.end method

.method public setHttpAgent(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/oculus/platform/UserAgentBuilder;->mHttpAgent:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBLC"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oculus/platform/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBPN"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-object p0
.end method
