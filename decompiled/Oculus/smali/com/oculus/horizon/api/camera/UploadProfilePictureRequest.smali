.class public Lcom/oculus/horizon/api/camera/UploadProfilePictureRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "UploadProfilePictureRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final profilePictureFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/oculus/horizon/api/camera/UploadProfilePictureRequest;->profilePictureFile:Ljava/io/File;

    .line 15
    return-void
.end method
