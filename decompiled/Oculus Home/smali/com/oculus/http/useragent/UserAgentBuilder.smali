.class public Lcom/oculus/http/useragent/UserAgentBuilder;
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

.field private static final FB_LOCALE:Ljava/lang/String; = "FBLC"

.field private static final FB_MANUFACTURER:Ljava/lang/String; = "FBMF"

.field private static final FB_PACKAGE_NAME:Ljava/lang/String; = "FBPN"

.field private static final FB_SYSTEM_VERSION:Ljava/lang/String; = "FBSV"

.field private static final FIXED_ORDER_KEYS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTIONAL_KEYS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
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
    .locals 6

    .prologue
    .line 34
    const-string v0, "FBAN"

    const-string v1, "FBAV"

    const-string v2, "FBDV"

    const-string v3, "FBCR"

    const-string v4, "FBLC"

    const-string v5, "FBSV"

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/http/useragent/UserAgentBuilder;->FIXED_ORDER_KEYS:Lcom/google/common/collect/ImmutableList;

    .line 39
    const-string v0, "FBBD"

    const-string v1, "FBBV"

    const-string v2, "FBCA"

    const-string v3, "FBMF"

    const-string v4, "FBPN"

    .line 40
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/http/useragent/UserAgentBuilder;->OPTIONAL_KEYS:Lcom/google/common/collect/ImmutableList;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    .line 47
    const-string v1, "phone"

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 50
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v2, "FBBD"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v2, "FBDV"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v2, "FBCR"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v2, "FBMF"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v2, "FBSV"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v2, "FBCA"

    const-string v3, "%s:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 56
    invoke-static {v3, v4}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method private xmlEncodeNonLatin(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 148
    if-eqz p1, :cond_3

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 152
    .local v0, "ch":C
    const/16 v3, 0x26

    if-ne v0, v3, :cond_0

    .line 153
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7e

    if-gt v0, v3, :cond_1

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 157
    :cond_1
    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 162
    .end local v0    # "ch":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-object v3

    :cond_3
    const-string v3, ""

    goto :goto_2
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    iget-object v2, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mHttpAgent:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mHttpAgent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget-object v2, Lcom/oculus/http/useragent/UserAgentBuilder;->FIXED_ORDER_KEYS:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v4, "%s/%s;"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v6

    iget-object v2, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oculus/http/useragent/UserAgentBuilder;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/oculus/http/useragent/UserAgentBuilder;->OPTIONAL_KEYS:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .restart local v1    # "key":Ljava/lang/String;
    const-string v4, "%s/%s;"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v6

    iget-object v2, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oculus/http/useragent/UserAgentBuilder;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 129
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 135
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "null"

    .line 139
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/http/useragent/UserAgentBuilder;->xmlEncodeNonLatin(Ljava/lang/String;)Ljava/lang/String;

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

.method public setAppName(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBAN"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;
    .locals 2
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBAV"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object p0
.end method

.method public setBuildVersion(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;
    .locals 2
    .param p1, "buildVersion"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBBV"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object p0
.end method

.method public setHttpAgent(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;
    .locals 0
    .param p1, "httpAgent"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mHttpAgent:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;
    .locals 2
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBLC"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/http/useragent/UserAgentBuilder;->mProperties:Ljava/util/Map;

    const-string v1, "FBPN"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-object p0
.end method
