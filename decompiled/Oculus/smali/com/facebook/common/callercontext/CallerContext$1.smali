.class final Lcom/facebook/common/callercontext/CallerContext$1;
.super Ljava/lang/Object;
.source "CallerContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/callercontext/CallerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/common/callercontext/CallerContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/common/callercontext/CallerContext;
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lcom/facebook/common/callercontext/CallerContext;

    invoke-direct {v0, p1}, Lcom/facebook/common/callercontext/CallerContext;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/facebook/common/callercontext/CallerContext$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/common/callercontext/CallerContext;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/common/callercontext/CallerContext;
    .locals 1

    .prologue
    .line 395
    new-array v0, p1, [Lcom/facebook/common/callercontext/CallerContext;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/facebook/common/callercontext/CallerContext$1;->newArray(I)[Lcom/facebook/common/callercontext/CallerContext;

    move-result-object v0

    return-object v0
.end method
