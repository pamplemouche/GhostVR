.class public LDH0;
.super LFH0;
.source "PG"


# static fields
.field public static final z:Ljava/lang/Class;


# instance fields
.field public final x:Lorg/chromium/chrome/browser/tab/Tab;

.field public y:Lg11;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LDH0;

    sput-object v0, LDH0;->z:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LFH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iput-object p1, p0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    iget-object p1, p0, LDH0;->y:Lg11;

    invoke-virtual {p1}, Lg11;->destroy()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, LDH0;->y:Lg11;

    return-void
.end method

.method public b(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .line 1
    new-instance v0, LCH0;

    invoke-direct {v0, p0, p1}, LCH0;-><init>(LDH0;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, LDH0;->y:Lg11;

    return-void
.end method
