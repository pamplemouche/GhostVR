.class public LH30;
.super Ldh;
.source "PG"

# interfaces
.implements LM30;


# instance fields
.field public final P:LS30;

.field public final Q:Landroid/content/ContentResolver;

.field public final R:Lorg/chromium/chrome/browser/contacts_picker/ContactView;

.field public S:LF30;

.field public T:LN30;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contacts_picker/ContactView;LS30;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldh;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, LH30;->P:LS30;

    .line 3
    iput-object p3, p0, LH30;->Q:Landroid/content/ContentResolver;

    .line 4
    iput-object p1, p0, LH30;->R:Lorg/chromium/chrome/browser/contacts_picker/ContactView;

    return-void
.end method
