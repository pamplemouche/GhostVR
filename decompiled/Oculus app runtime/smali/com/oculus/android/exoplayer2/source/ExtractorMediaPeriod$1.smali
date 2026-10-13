.class Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod$1;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource;[Lcom/oculus/android/exoplayer2/extractor/Extractor;ILcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/oculus/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod;


# direct methods
.method constructor <init>(Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod$1;->this$0:Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod$1;->this$0:Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod;->access$000(Lcom/oculus/android/exoplayer2/source/ExtractorMediaPeriod;)V

    return-void
.end method
