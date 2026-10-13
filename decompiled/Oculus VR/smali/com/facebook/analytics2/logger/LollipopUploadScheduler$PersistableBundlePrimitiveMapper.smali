.class Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;
.super Ljava/lang/Object;
.source "LollipopUploadScheduler.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;
.implements Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/LollipopUploadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersistableBundlePrimitiveMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;",
        "Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter",
        "<",
        "Landroid/os/PersistableBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBundle:Landroid/os/PersistableBundle;


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->mBundle:Landroid/os/PersistableBundle;

    .line 141
    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 166
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public storage()Landroid/os/PersistableBundle;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->mBundle:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public bridge synthetic storage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->storage()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method
