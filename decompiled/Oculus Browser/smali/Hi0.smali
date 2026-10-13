.class public final synthetic LHi0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final w:LIi0;


# direct methods
.method public constructor <init>(LIi0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHi0;->w:LIi0;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, LHi0;->w:LIi0;

    .line 1
    iget-object p1, p1, LIi0;->b:Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;

    .line 2
    iget-wide v0, p1, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->w:J

    .line 3
    invoke-static {v0, v1, p1}, LJ/N;->MbTC7yfl(JLjava/lang/Object;)V

    return-void
.end method
