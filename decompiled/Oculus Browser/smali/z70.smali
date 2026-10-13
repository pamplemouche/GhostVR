.class public Lz70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz70;->w:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-ltz p3, :cond_0

    const/4 p1, 0x3

    if-ge p3, p1, :cond_0

    .line 1
    iget-object p1, p0, Lz70;->w:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->y:LYS0;

    .line 3
    iget-wide p4, p1, LYS0;->a:J

    .line 4
    invoke-static {p4, p5, p1, p3}, LJ/N;->MfkxLC88(JLjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
