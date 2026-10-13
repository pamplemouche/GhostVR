.class public LnZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic w:LuZ0;


# direct methods
.method public constructor <init>(LuZ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LnZ0;->w:LuZ0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, LnZ0;->w:LuZ0;

    .line 2
    iget-boolean v0, p1, LuZ0;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, LuZ0;->b:Z

    .line 4
    iget-object p1, p1, LuZ0;->d:LrZ0;

    .line 5
    check-cast p1, LTX0;

    .line 6
    iget-object p1, p1, LTX0;->a:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    .line 7
    iget-wide v0, p1, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->a:J

    .line 8
    invoke-static {v0, v1, p1}, LJ/N;->MCtaZNwj(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method
