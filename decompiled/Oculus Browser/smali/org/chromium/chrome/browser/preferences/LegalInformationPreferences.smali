.class public Lorg/chromium/chrome/browser/preferences/LegalInformationPreferences;
.super Lrc;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f170010

    .line 1
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f130399

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
