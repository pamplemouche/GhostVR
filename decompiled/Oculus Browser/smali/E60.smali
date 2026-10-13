.class public final synthetic LE60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

.field public final x:Landroidx/browser/customtabs/CustomTabsSessionToken;

.field public final y:I

.field public final z:Lh20;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroidx/browser/customtabs/CustomTabsSessionToken;ILh20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE60;->w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iput-object p2, p0, LE60;->x:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iput p3, p0, LE60;->y:I

    iput-object p4, p0, LE60;->z:Lh20;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LE60;->w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v1, p0, LE60;->x:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget v2, p0, LE60;->y:I

    iget-object v3, p0, LE60;->z:Lh20;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const-string v5, "CCTPostMessageAPI"

    .line 1
    invoke-static {v5}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-ne v2, v5, :cond_1

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :cond_1
    if-nez v4, :cond_2

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lo60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;Lh20;I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v0, v1, v4}, Lo60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)V

    :goto_0
    return-void

    .line 5
    :cond_3
    throw v4
.end method
