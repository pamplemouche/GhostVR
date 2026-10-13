.class public Lta0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic A:Ljava/lang/String;

.field public final synthetic B:Lwa0;

.field public final synthetic w:Landroid/content/Intent;

.field public final synthetic x:Z

.field public final synthetic y:Z

.field public final synthetic z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lwa0;Landroid/content/Intent;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lta0;->B:Lwa0;

    iput-object p2, p0, Lta0;->w:Landroid/content/Intent;

    iput-boolean p3, p0, Lta0;->x:Z

    iput-boolean p4, p0, Lta0;->y:Z

    iput-object p5, p0, Lta0;->z:Ljava/lang/String;

    iput-object p6, p0, Lta0;->A:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    :try_start_0
    iget-object p1, p0, Lta0;->B:Lwa0;

    iget-object p2, p0, Lta0;->w:Landroid/content/Intent;

    iget-boolean v0, p0, Lta0;->x:Z

    invoke-virtual {p1, p2, v0}, Lwa0;->startActivity(Landroid/content/Intent;Z)V

    .line 2
    iget-object p1, p0, Lta0;->B:Lwa0;

    .line 3
    iget-object p1, p1, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lta0;->B:Lwa0;

    .line 5
    iget-object p1, p1, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lta0;->B:Lwa0;

    .line 8
    iget-object p1, p1, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lta0;->y:Z

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lta0;->B:Lwa0;

    .line 11
    invoke-virtual {p1}, Lwa0;->a()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    iget-object v0, p0, Lta0;->B:Lwa0;

    iget-object v1, p0, Lta0;->w:Landroid/content/Intent;

    iget-object v2, p0, Lta0;->z:Ljava/lang/String;

    iget-object v3, p0, Lta0;->A:Ljava/lang/String;

    .line 13
    iget-object v4, v0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 14
    iget-boolean v5, p0, Lta0;->y:Z

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lwa0;->a(Lwa0;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V

    :cond_0
    :goto_0
    return-void
.end method
