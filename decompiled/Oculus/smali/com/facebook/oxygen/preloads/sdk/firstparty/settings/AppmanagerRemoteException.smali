.class public Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;
.super Ljava/lang/Exception;
.source "AppmanagerRemoteException.java"


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    iput p1, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;->reason:I

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iput p1, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;->reason:I

    .line 21
    return-void
.end method
