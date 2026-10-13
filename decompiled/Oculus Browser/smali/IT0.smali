.class public LIT0;
.super LLT0;
.source "PG"


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LIT0;->e:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    iput-object p2, p0, LIT0;->b:Ljava/lang/String;

    iput-object p3, p0, LIT0;->c:Ljava/lang/String;

    iput p4, p0, LIT0;->d:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LLT0;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;LFT0;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .line 6
    :try_start_0
    iget-object v0, p0, LIT0;->e:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 7
    iget-object v0, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->c:LMT0;

    .line 8
    iget-object v1, p0, LIT0;->b:Ljava/lang/String;

    iget-object v2, p0, LIT0;->c:Ljava/lang/String;

    .line 9
    iget-object v0, v0, LMT0;->a:LVq;

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v3}, LVq;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    iget-object v0, p0, LIT0;->e:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 12
    iget-object v0, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->a:Ljava/lang/String;

    .line 13
    iget-object v1, p0, LIT0;->b:Ljava/lang/String;

    .line 14
    invoke-static {v0, v1}, LDT0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, LDT0;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {v0}, LDT0;->a(Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object v0, p0, LIT0;->e:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 18
    iget-object v0, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->a:Ljava/lang/String;

    .line 19
    iget-object v1, p0, LIT0;->b:Ljava/lang/String;

    .line 20
    invoke-static {v0, v1}, LET0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, LET0;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 23
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
    iget-object v0, p0, LIT0;->e:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 3
    iget-wide v1, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->b:J

    .line 4
    iget v3, p0, LIT0;->d:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    invoke-static {v1, v2, v0, v3, p1}, LJ/N;->MWbugtkA(JLjava/lang/Object;IZ)V

    return-void
.end method
