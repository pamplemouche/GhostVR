.class public LL31;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field public final a:LM31;


# direct methods
.method public constructor <init>(LM31;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LL31;->a:LM31;

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 4

    .line 1
    iget-object v0, p0, LL31;->a:LM31;

    .line 2
    iget-object v1, v0, LM31;->J:Landroid/os/Vibrator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getType()Ljava/lang/String;

    .line 5
    new-instance v1, LS31;

    new-instance v3, LQ31;

    invoke-direct {v3, v2}, LQ31;-><init>(Landroid/nfc/tech/Ndef;)V

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, LS31;-><init>(Landroid/nfc/tech/TagTechnology;LR31;[B)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    new-instance v1, LS31;

    new-instance v3, LP31;

    invoke-direct {v3, v2}, LP31;-><init>(Landroid/nfc/tech/NdefFormatable;)V

    .line 8
    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, LS31;-><init>(Landroid/nfc/tech/TagTechnology;LR31;[B)V

    .line 9
    :cond_2
    :goto_0
    iput-object v1, v0, LM31;->E:LS31;

    .line 10
    invoke-virtual {v0}, LM31;->j()V

    .line 11
    invoke-virtual {v0}, LM31;->i()V

    .line 12
    iget-object p1, v0, LM31;->E:LS31;

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p1, LS31;->a:Landroid/nfc/tech/TagTechnology;

    invoke-interface {p1}, Landroid/nfc/tech/TagTechnology;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    :try_start_0
    iget-object p1, v0, LM31;->E:LS31;

    .line 15
    iget-object p1, p1, LS31;->a:Landroid/nfc/tech/TagTechnology;

    invoke-interface {p1}, Landroid/nfc/tech/TagTechnology;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "NfcImpl"

    const-string v1, "Cannot close NFC tag connection."

    .line 16
    invoke-static {v0, v1, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
