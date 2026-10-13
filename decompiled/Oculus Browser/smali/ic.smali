.class public Lic;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lic;->w:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lic;->w:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;)V

    return-void
.end method
