.class public Lcom/oculus/mobileconfig/init/MobileConfigInitOptions;
.super Ljava/lang/Object;
.source "MobileConfigInitOptions.java"


# instance fields
.field public final shouldFetchOnLogin:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/oculus/mobileconfig/init/MobileConfigInitOptions;->shouldFetchOnLogin:Z

    .line 11
    return-void
.end method
