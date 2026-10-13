.class Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;
.super Ljava/lang/Object;
.source "MediaProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/MediaProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifChecks"
.end annotation


# instance fields
.field private condition:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;->tag:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;->condition:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;->condition:Ljava/lang/String;

    return-object v0
.end method
