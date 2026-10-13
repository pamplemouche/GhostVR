.class public Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;
.super Ljava/lang/Object;
.source "MobileConfigCaptureError.java"


# instance fields
.field private mError:Lcom/facebook/mobileconfig/factory/MobileConfigError;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;->mError:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    .line 10
    return-void
.end method


# virtual methods
.method public getError()Lcom/facebook/mobileconfig/factory/MobileConfigError;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;->mError:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    return-object v0
.end method

.method public setError(Lcom/facebook/mobileconfig/factory/MobileConfigError;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;->mError:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    .line 14
    return-void
.end method
