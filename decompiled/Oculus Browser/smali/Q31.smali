.class public LQ31;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LR31;


# instance fields
.field public final a:Landroid/nfc/tech/Ndef;


# direct methods
.method public constructor <init>(Landroid/nfc/tech/Ndef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LQ31;->a:Landroid/nfc/tech/Ndef;

    return-void
.end method


# virtual methods
.method public a()Landroid/nfc/NdefMessage;
    .locals 1

    .line 2
    iget-object v0, p0, LQ31;->a:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/nfc/NdefMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, LQ31;->a:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    return-void
.end method
