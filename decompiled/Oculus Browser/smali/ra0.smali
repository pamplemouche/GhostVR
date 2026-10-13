.class public Lra0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic A:Lwa0;

.field public final synthetic w:Landroid/content/Intent;

.field public final synthetic x:Ljava/lang/String;

.field public final synthetic y:Ljava/lang/String;

.field public final synthetic z:Z


# direct methods
.method public constructor <init>(Lwa0;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lra0;->A:Lwa0;

    iput-object p2, p0, Lra0;->w:Landroid/content/Intent;

    iput-object p3, p0, Lra0;->x:Ljava/lang/String;

    iput-object p4, p0, Lra0;->y:Ljava/lang/String;

    iput-boolean p5, p0, Lra0;->z:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lra0;->A:Lwa0;

    iget-object v1, p0, Lra0;->w:Landroid/content/Intent;

    iget-object v2, p0, Lra0;->x:Ljava/lang/String;

    iget-object v3, p0, Lra0;->y:Ljava/lang/String;

    .line 2
    iget-object v4, v0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-boolean v5, p0, Lra0;->z:Z

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lwa0;->a(Lwa0;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V

    return-void
.end method
