.class public Lcom/facebook/common/locale/BasicLocales;
.super Ljava/lang/Object;
.source "BasicLocales.java"

# interfaces
.implements Lcom/facebook/common/locale/ILocales;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final DEFAULT_LANGUAGE:Ljava/util/Locale;

.field public static final DEFAULT_LOCALE:Ljava/util/Locale;

.field public static final FB_HASH_LOCALE:Ljava/util/Locale;


# instance fields
.field protected final mCountryLocaleCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLanguageLocaleCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLocaleOverride:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedLanguages:Lcom/facebook/common/locale/SupportedLanguages;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/facebook/common/locale/BasicLocales;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 28
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v0, Lcom/facebook/common/locale/BasicLocales;->DEFAULT_LANGUAGE:Ljava/util/Locale;

    .line 29
    new-instance v0, Ljava/util/Locale;

    const-string v1, "fb"

    const-string v2, "HA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/common/locale/BasicLocales;->FB_HASH_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/locale/SupportedLanguages;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/locale/SupportedLanguages;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/common/locale/BasicLocales;->mSupportedLanguages:Lcom/facebook/common/locale/SupportedLanguages;

    .line 43
    iput-object p2, p0, Lcom/facebook/common/locale/BasicLocales;->mLocaleProvider:Ljavax/inject/Provider;

    .line 44
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/locale/BasicLocales;->mCountryLocaleCache:Landroid/util/LruCache;

    .line 45
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/locale/BasicLocales;->mLanguageLocaleCache:Landroid/util/LruCache;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/locale/BasicLocales;->mLocaleOverride:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    return-void
.end method

.method private getCountryLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/common/locale/BasicLocales;->mCountryLocaleCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 184
    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-object v0

    .line 188
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/facebook/common/locale/BasicLocales;->mCountryLocaleCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getUnfilteredApplicationLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/common/locale/BasicLocales;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public getApplicationLanguage()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/facebook/common/locale/BasicLocales;->getApplicationLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/common/locale/BasicLocales;->getSupportedLanguageFromLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/facebook/common/locale/BasicLocales;->getUnfilteredApplicationLocale()Ljava/util/Locale;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/facebook/common/locale/BasicLocales;->mSupportedLanguages:Lcom/facebook/common/locale/SupportedLanguages;

    invoke-interface {v1}, Lcom/facebook/common/locale/SupportedLanguages;->get()Ljava/util/Set;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/common/locale/BasicLocales;->getCountryLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/common/locale/BasicLocales;->FB_HASH_LOCALE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    sget-object v0, Lcom/facebook/common/locale/BasicLocales;->DEFAULT_LOCALE:Ljava/util/Locale;

    goto :goto_0
.end method

.method public getFacebookPlatformLocaleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/common/locale/BasicLocales;->mLocaleOverride:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 120
    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/facebook/common/locale/BasicLocales;->getApplicationLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 124
    :cond_0
    invoke-static {v0}, Lcom/facebook/common/locale/FBLocaleMapper;->mapLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedLanguageFromLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/common/locale/BasicLocales;->mSupportedLanguages:Lcom/facebook/common/locale/SupportedLanguages;

    invoke-interface {v0}, Lcom/facebook/common/locale/SupportedLanguages;->get()Ljava/util/Set;

    move-result-object v1

    .line 86
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-object p1

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/common/locale/BasicLocales;->getCountryLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, v0

    .line 91
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/facebook/common/locale/BasicLocales;->mLanguageLocaleCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 97
    if-nez v0, :cond_2

    .line 98
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/facebook/common/locale/BasicLocales;->mLanguageLocaleCache:Landroid/util/LruCache;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object p1, v0

    .line 101
    goto :goto_0

    .line 104
    :cond_3
    sget-object p1, Lcom/facebook/common/locale/BasicLocales;->DEFAULT_LANGUAGE:Ljava/util/Locale;

    goto :goto_0
.end method
