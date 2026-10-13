.class public final Lcom/facebook/mobileconfig/factory/MobileConfigOptions;
.super Ljava/lang/Object;
.source "MobileConfigOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final GET_LATEST:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

.field public static final NONE:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

.field public static final WITHOUT_LOGGING:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;


# instance fields
.field mGetLatestValue:Z

.field private mIsMutable:Z

.field mRequestForValueSource:Z

.field private mValueSource:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

.field mWithoutLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    invoke-static {}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->create()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    invoke-direct {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->asReadonly()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->NONE:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    .line 8
    invoke-static {}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->create()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->getLatest()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    invoke-direct {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->asReadonly()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->GET_LATEST:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    .line 10
    invoke-static {}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->create()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->withoutLogging()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    invoke-direct {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->asReadonly()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->WITHOUT_LOGGING:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mWithoutLogging:Z

    .line 13
    iput-boolean v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mGetLatestValue:Z

    .line 14
    iput-boolean v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    .line 15
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->UNKNOWN:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mValueSource:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mIsMutable:Z

    .line 19
    return-void
.end method

.method private asMutable()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;
    .locals 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mIsMutable:Z

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-object p0

    .line 42
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mIsMutable:Z

    move-object p0, v0

    .line 48
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private asReadonly()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;
    .locals 2

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mIsMutable:Z

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-object p0

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mIsMutable:Z

    move-object p0, v0

    .line 33
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    invoke-direct {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getLatest()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->asMutable()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mGetLatestValue:Z

    .line 64
    return-object v0
.end method

.method public getValueSource()Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mValueSource:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    return-object v0
.end method

.method public requestForValueSource()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->asMutable()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    .line 70
    return-object v0
.end method

.method setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->asMutable()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    .line 75
    iput-object p1, v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mValueSource:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    .line 76
    return-void
.end method

.method public withoutLogging()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->asMutable()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mWithoutLogging:Z

    .line 58
    return-object v0
.end method
