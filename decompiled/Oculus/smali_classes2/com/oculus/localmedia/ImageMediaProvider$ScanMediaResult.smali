.class Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;
.super Ljava/lang/Object;
.source "ImageMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/ImageMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanMediaResult"
.end annotation


# instance fields
.field public images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public panos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/localmedia/ImageMediaProvider;


# direct methods
.method public constructor <init>(Lcom/oculus/localmedia/ImageMediaProvider;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->this$0:Lcom/oculus/localmedia/ImageMediaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->images:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->panos:Ljava/util/ArrayList;

    .line 64
    return-void
.end method
