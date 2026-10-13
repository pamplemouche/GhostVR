.class public LP31;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LR31;


# instance fields
.field public final a:Landroid/nfc/tech/NdefFormatable;


# direct methods
.method public constructor <init>(Landroid/nfc/tech/NdefFormatable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LP31;->a:Landroid/nfc/tech/NdefFormatable;

    return-void
.end method


# virtual methods
.method public a()Landroid/nfc/NdefMessage;
    .locals 4

    .line 2
    new-instance v0, Landroid/nfc/NdefMessage;

    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method public a(Landroid/nfc/NdefMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, LP31;->a:Landroid/nfc/tech/NdefFormatable;

    invoke-virtual {v0, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    return-void
.end method
