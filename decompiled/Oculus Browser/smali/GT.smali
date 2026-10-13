.class public LGT;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:J

.field public final synthetic x:J


# direct methods
.method public constructor <init>(Lorg/chromium/base/JavaHandlerThread;JJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, LGT;->w:J

    iput-wide p4, p0, LGT;->x:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-wide v0, p0, LGT;->w:J

    iget-wide v2, p0, LGT;->x:J

    .line 2
    invoke-static {v0, v1, v2, v3}, LJ/N;->MJcct7gJ(JJ)V

    return-void
.end method
