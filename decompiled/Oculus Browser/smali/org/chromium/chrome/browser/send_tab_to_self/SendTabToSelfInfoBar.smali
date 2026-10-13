.class public Lorg/chromium/chrome/browser/send_tab_to_self/SendTabToSelfInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f08023d

    const v2, 0x7f06007a

    .line 1
    invoke-direct {p0, v1, v2, v0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(IILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static create()Lorg/chromium/chrome/browser/send_tab_to_self/SendTabToSelfInfoBar;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/send_tab_to_self/SendTabToSelfInfoBar;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/send_tab_to_self/SendTabToSelfInfoBar;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lpf0;)V
    .locals 2

    .line 1
    new-instance v0, Lof0;

    invoke-direct {v0, p1}, Lof0;-><init>(Lpf0;)V

    const p1, 0x7f130565

    .line 2
    invoke-virtual {v0, p1}, Lof0;->a(I)Lof0;

    new-instance p1, LuD0;

    invoke-direct {p1, p0}, LuD0;-><init>(Lorg/chromium/chrome/browser/send_tab_to_self/SendTabToSelfInfoBar;)V

    const v1, 0x7f130566

    .line 3
    invoke-virtual {v0, v1, p1}, Lof0;->a(ILorg/chromium/base/Callback;)Lof0;

    .line 4
    invoke-virtual {v0}, Lof0;->a()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
