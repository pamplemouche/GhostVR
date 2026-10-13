.class public final synthetic LCD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Ljava/lang/String;

.field public final x:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCD0;->w:Ljava/lang/String;

    iput-object p2, p0, LCD0;->x:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LCD0;->w:Ljava/lang/String;

    iget-object v1, p0, LCD0;->x:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
