.class public Lt2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lz2;


# direct methods
.method public constructor <init>(Lz2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt2;->w:Lz2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt2;->w:Lz2;

    invoke-virtual {v0}, Lz2;->i()V

    return-void
.end method
