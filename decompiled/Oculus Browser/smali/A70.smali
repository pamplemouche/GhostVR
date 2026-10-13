.class public LA70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LA70;->x:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    iput p2, p0, LA70;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, LA70;->x:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->y:LYS0;

    .line 3
    iget v0, p0, LA70;->w:I

    .line 4
    iget-wide v1, p1, LYS0;->a:J

    .line 5
    invoke-static {v1, v2, p1, v0}, LJ/N;->MJBehZGI(JLjava/lang/Object;I)V

    return-void
.end method
