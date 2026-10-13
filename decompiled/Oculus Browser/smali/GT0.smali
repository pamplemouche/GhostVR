.class public LGT0;
.super LLT0;
.source "PG"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LGT0;->c:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    iput p2, p0, LGT0;->b:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LLT0;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;LFT0;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 6
    iget-object v0, p0, LGT0;->c:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 7
    iget-object v0, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->c:LMT0;

    .line 8
    iget-object v0, v0, LMT0;->a:LVq;

    .line 9
    sget-object v1, LVq;->e:Lhr;

    iget-object v0, v0, LVq;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lhr;->c(Ljava/lang/String;)Lsr;

    move-result-object v0

    .line 10
    iget-wide v0, v0, Lsr;->b:J

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    iget-object v2, p0, LGT0;->c:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 3
    iget-wide v0, v2, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->b:J

    .line 4
    iget v3, p0, LGT0;->b:I

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5
    invoke-static/range {v0 .. v5}, LJ/N;->M1_H2CVT(JLjava/lang/Object;IJ)V

    return-void
.end method
