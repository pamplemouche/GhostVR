.class public final Ltz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpx;

.field public final b:LFx;

.field public final c:Lry;

.field public final d:LYw;

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Lpx;LFx;Lry;LYw;Lpw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltz;->a:Lpx;

    .line 3
    iput-object p2, p0, Ltz;->b:LFx;

    .line 4
    iput-object p3, p0, Ltz;->c:Lry;

    .line 5
    iput-object p4, p0, Ltz;->d:LYw;

    const/4 p1, 0x0

    const-string p2, "use_timeout_scheduler"

    .line 6
    invoke-virtual {p5, p2, p1}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Ltz;->e:Z

    const-string p2, "limit_page_updates"

    const/4 p3, 0x1

    .line 7
    invoke-virtual {p5, p2, p3}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Ltz;->f:Z

    const-string p2, "limit_page_updates_in_head"

    .line 8
    invoke-virtual {p5, p2, p1}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ltz;->g:Z

    return-void
.end method
