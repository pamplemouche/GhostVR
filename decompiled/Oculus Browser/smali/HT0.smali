.class public LHT0;
.super LLT0;
.source "PG"


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:I

.field public final synthetic g:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LHT0;->g:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    iput-object p2, p0, LHT0;->b:Ljava/lang/String;

    iput p3, p0, LHT0;->c:I

    iput-object p4, p0, LHT0;->d:Ljava/lang/String;

    iput-object p5, p0, LHT0;->e:Landroid/os/Bundle;

    iput p6, p0, LHT0;->f:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LLT0;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;LFT0;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .line 6
    :try_start_0
    iget-object v0, p0, LHT0;->g:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 7
    iget-object v0, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->a:Ljava/lang/String;

    .line 8
    iget-object v1, p0, LHT0;->b:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1}, LDT0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LHT0;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-static {v0, v2}, LDT0;->b(Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, LHT0;->g:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 12
    iget-object v0, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->a:Ljava/lang/String;

    .line 13
    iget-object v1, p0, LHT0;->b:Ljava/lang/String;

    .line 14
    invoke-static {v0, v1}, LET0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LHT0;->c:I

    if-nez v1, :cond_1

    .line 15
    invoke-static {v0}, LET0;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_1
    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v4, "org.chromium.components.gcm_driver.subscription_flags"

    .line 17
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 19
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    :goto_1
    iget-object v0, p0, LHT0;->g:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 22
    iget-object v0, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->c:LMT0;

    .line 23
    iget-object v1, p0, LHT0;->b:Ljava/lang/String;

    iget-object v2, p0, LHT0;->d:Ljava/lang/String;

    iget-object v3, p0, LHT0;->e:Landroid/os/Bundle;

    .line 24
    iget-object v0, v0, LMT0;->a:LVq;

    invoke-virtual {v0, v1, v2, v3}, LVq;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, LHT0;->g:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    .line 3
    iget-wide v1, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->b:J

    .line 4
    iget v3, p0, LHT0;->f:I

    .line 5
    invoke-static {v1, v2, v0, v3, p1}, LJ/N;->MgpbhGOm(JLjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method
