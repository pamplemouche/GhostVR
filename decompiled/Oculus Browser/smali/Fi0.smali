.class public final synthetic LFi0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final w:LIi0;


# direct methods
.method public constructor <init>(LIi0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFi0;->w:LIi0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, LFi0;->w:LIi0;

    .line 1
    iget-object p2, p1, LIi0;->b:Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;

    .line 2
    iget-object v0, p1, LIi0;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object p1, p1, LIi0;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-wide v1, p2, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->w:J

    .line 5
    invoke-static {v1, v2, p2, v0, p1}, LJ/N;->MAMBiVB$(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
