.class public LN31;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lea1;


# instance fields
.field public a:Lorg/chromium/device/nfc/NfcDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/device/nfc/NfcDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LN31;->a:Lorg/chromium/device/nfc/NfcDelegate;

    return-void
.end method


# virtual methods
.method public a()LE61;
    .locals 2

    .line 1
    new-instance v0, LO31;

    iget-object v1, p0, LN31;->a:Lorg/chromium/device/nfc/NfcDelegate;

    invoke-direct {v0, v1}, LO31;-><init>(Lorg/chromium/device/nfc/NfcDelegate;)V

    return-object v0
.end method
