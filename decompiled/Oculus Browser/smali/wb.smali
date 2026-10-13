.class public Lwb;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "PG"


# instance fields
.field public final a:Lvb;


# direct methods
.method public constructor <init>(Lvb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lwb;->a:Lvb;

    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwb;->a:Lvb;

    invoke-interface {v0, p1, p2}, Lvb;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwb;->a:Lvb;

    invoke-interface {v0, p1, p2}, Lvb;->a(Ljava/lang/Object;I)V

    return-void
.end method
