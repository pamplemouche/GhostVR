.class public LO31;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LE21;


# instance fields
.field public w:Lorg/chromium/device/nfc/NfcDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/device/nfc/NfcDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LO31;->w:Lorg/chromium/device/nfc/NfcDelegate;

    return-void
.end method


# virtual methods
.method public a(ILG61;)V
    .locals 3

    .line 1
    sget-object v0, Lu21;->f:LA61;

    new-instance v1, LM31;

    iget-object v2, p0, LO31;->w:Lorg/chromium/device/nfc/NfcDelegate;

    invoke-direct {v1, p1, v2}, LM31;-><init>(ILorg/chromium/device/nfc/NfcDelegate;)V

    invoke-virtual {v0, v1, p2}, LA61;->a(LE61;LG61;)V

    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method
