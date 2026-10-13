.class public final LWy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final n:J


# instance fields
.field public final a:LFx;

.field public final b:Lpx;

.field public final c:Lry;

.field public final d:LYw;

.field public final e:Ldx;

.field public final f:Lgx;

.field public final g:Lfx;

.field public final h:Lww;

.field public final i:Lpw;

.field public final j:Lky;

.field public final k:LGx;

.field public final l:Lxx;

.field public final m:Lrw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, LWy;->n:J

    return-void
.end method

.method public constructor <init>(LFx;Lpx;Lry;LYw;Ldx;Lgx;Lfx;Lww;Lpw;Lky;LGx;Lxx;Lrw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LWy;->a:LFx;

    .line 3
    iput-object p2, p0, LWy;->b:Lpx;

    .line 4
    iput-object p3, p0, LWy;->c:Lry;

    .line 5
    iput-object p4, p0, LWy;->d:LYw;

    .line 6
    iput-object p5, p0, LWy;->e:Ldx;

    .line 7
    iput-object p6, p0, LWy;->f:Lgx;

    .line 8
    iput-object p7, p0, LWy;->g:Lfx;

    .line 9
    iput-object p8, p0, LWy;->h:Lww;

    .line 10
    iput-object p9, p0, LWy;->i:Lpw;

    .line 11
    iput-object p10, p0, LWy;->j:Lky;

    .line 12
    iput-object p11, p0, LWy;->k:LGx;

    .line 13
    iput-object p12, p0, LWy;->l:Lxx;

    .line 14
    iput-object p13, p0, LWy;->m:Lrw;

    return-void
.end method
