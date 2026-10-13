.class public Lgp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lk00;

.field public final synthetic x:I

.field public final synthetic y:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Lk00;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgp0;->y:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iput-object p2, p0, Lgp0;->w:Lk00;

    iput p3, p0, Lgp0;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgp0;->w:Lk00;

    iget v1, p0, Lgp0;->x:I

    .line 2
    iget-object v0, v0, Lk00;->a:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3
    iget-object v0, p0, Lgp0;->y:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->a0:Ljava/lang/Runnable;

    return-void
.end method
