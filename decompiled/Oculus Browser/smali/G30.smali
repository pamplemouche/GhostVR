.class public LG30;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LDd1;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/contacts_picker/ContactView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contacts_picker/ContactView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LG30;->w:Lorg/chromium/chrome/browser/contacts_picker/ContactView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lle1;I)V
    .locals 0

    return-void
.end method

.method public b(Lle1;I)V
    .locals 1

    .line 1
    iget-object v0, p0, LG30;->w:Lorg/chromium/chrome/browser/contacts_picker/ContactView;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->W:LBd1;

    .line 3
    invoke-virtual {v0, p1, p2}, LBd1;->a(Lle1;I)V

    .line 4
    iget-object p1, p0, LG30;->w:Lorg/chromium/chrome/browser/contacts_picker/ContactView;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p1, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->a0:Lle1;

    .line 6
    iput-object p2, p1, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->W:LBd1;

    return-void
.end method
