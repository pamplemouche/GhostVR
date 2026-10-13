.class public Lmc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Lwc0;


# direct methods
.method public constructor <init>(Lwc0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmc0;->x:Lwc0;

    iput-object p2, p0, Lmc0;->w:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmc0;->x:Lwc0;

    iget-object v0, v0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    iget-object v1, p0, Lmc0;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
