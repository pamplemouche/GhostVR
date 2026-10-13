.class public Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;
.super Ljava/lang/Object;
.source "UploadJobConfig.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;
.implements Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadJobConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BundlePrimitiveMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;",
        "Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storage()Landroid/os/Bundle;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public bridge synthetic storage()Ljava/lang/Object;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;->storage()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
