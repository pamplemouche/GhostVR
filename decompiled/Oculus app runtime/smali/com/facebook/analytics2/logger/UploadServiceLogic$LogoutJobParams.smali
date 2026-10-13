.class public Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;
.super Ljava/lang/Object;
.source "UploadServiceLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadServiceLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogoutJobParams"
.end annotation


# static fields
.field private static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field public final userId:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "user_id"

    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;->userId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 3

    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;->userId:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
