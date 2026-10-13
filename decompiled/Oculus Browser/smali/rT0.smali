.class public LrT0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lorg/chromium/components/gcm_driver/GCMDriver;


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LrT0;->c:Lorg/chromium/components/gcm_driver/GCMDriver;

    iput-object p2, p0, LrT0;->a:Ljava/lang/String;

    iput-object p3, p0, LrT0;->b:Ljava/lang/String;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, LrT0;->a:Ljava/lang/String;

    .line 2
    iget-object v2, p0, LrT0;->c:Lorg/chromium/components/gcm_driver/GCMDriver;

    .line 3
    iget-object v2, v2, Lorg/chromium/components/gcm_driver/GCMDriver;->b:LAT0;

    .line 4
    iget-object v3, p0, LrT0;->b:Ljava/lang/String;

    check-cast v2, LCT0;

    if-eqz v2, :cond_0

    .line 5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "subtype"

    .line 6
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delete"

    const-string v5, "1"

    .line 7
    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v3, v4}, LCT0;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "GCM unsubscription failed for "

    .line 11
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LrT0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LrT0;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "GCMDriver"

    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, LrT0;->c:Lorg/chromium/components/gcm_driver/GCMDriver;

    .line 3
    iget-wide v1, v0, Lorg/chromium/components/gcm_driver/GCMDriver;->a:J

    .line 4
    iget-object v3, p0, LrT0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    invoke-static {v1, v2, v0, v3, p1}, LJ/N;->MDziew73(JLjava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method
