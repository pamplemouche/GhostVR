.class public LJT0;
.super LLT0;
.source "PG"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LJT0;->c:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    iput p2, p0, LJT0;->b:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LLT0;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;LFT0;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, LJT0;->c:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 7
    iget-object v0, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->c:LMT0;

    .line 8
    invoke-virtual {v0}, LMT0;->a()V

    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, LJT0;->c:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 3
    iget-wide v1, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->b:J

    .line 4
    iget v3, p0, LJT0;->b:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    invoke-static {v1, v2, v0, v3, p1}, LJ/N;->MB$4Dsst(JLjava/lang/Object;IZ)V

    return-void
.end method
